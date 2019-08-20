//
//  main.cpp
//  binfiletool
//
//  Created by neo on 2016/2/1.
//  Copyright © 2016年 njiot. All rights reserved.
//

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <fstream>
#include <algorithm>
#include <vector>
#include <sys/types.h>
#include <sys/stat.h>

using namespace std;

string build_path=".";
string toolchain_prefix;

unsigned long image2_pos=0;

int copyFile(const char *src, const char *dst)
{
	int ret = 0;
	FILE *src_f = NULL, *dst_f = NULL;
	src_f = fopen(src, "r");
	dst_f = fopen(dst, "w+");

	if (src_f && dst_f) {
		int len = 0;
		char buf[1024] = {0};
		while ((len = fread(buf, 1, sizeof(buf), src_f)) > 0 )
			fwrite(buf, 1, len, dst_f);
	} else
		ret = -1;

	if (src_f)
		fclose(src_f);
	if (dst_f)
		fclose(dst_f);

	return ret;
}

int copy_target_file(void)
{
    int ret;
    string cmd;
    
    string file1 = build_path + "/target.axf";
    string file2 = build_path + "/target.axf.bak";
    string file3 = build_path + "/target_pure.axf";
    
    ret = copyFile(file1.c_str(), file2.c_str());
    if ( ret != 0 ) {
        cout << " copyfile : " << file1 << " - " << file2 << ", ret=" << ret << endl;
        return ret;
    }
    ret = copyFile(file1.c_str(), file3.c_str());
    if ( ret == 0 ) {
        cout << " CopyFile : " << file1 << " - " << file3 << ", ret=" << ret << endl;
        return ret;
    }
    return ret;
}

void generate_binfiles(void)
{
    string strip_command = toolchain_prefix + "-strip " + build_path + "/target_pure.axf ";
    string make_bin1 = toolchain_prefix + "-objcopy -j .ram.start.table -j .ram_image1.text -Obinary " + build_path + "/target_pure.axf " + build_path + "/ram_1.bin ";
    string make_bin2 = toolchain_prefix + "-objcopy -j .image2.start.table -j .ram_image2.text  -j .ARM.exidx -Obinary " + build_path + "/target_pure.axf " + build_path + "/ram_2.bin ";
    //string make_bin3 = toolchain_prefix + "-objcopy -j .image3 -j .ARM.exidx -j .sdr_data -Obinary " + build_path + "/target_pure.axf " + build_path + "/ram_3.bin ";
    
    system(strip_command.c_str());
    
    system(make_bin1.c_str());
    
    system(make_bin2.c_str());
    
    //system(make_bin3.c_str());
    
}

void sort_mapfile()
{
    vector<string> lines;
    
    ifstream infile;
    
    string infilestr = build_path + "/target.nm";
    infile.open( infilestr.c_str() );
    
    string line;
    while ( getline(infile, line) )
    {
        lines.push_back(line);
    }
    infile.close();
    
    sort(lines.begin(), lines.end());
    
    string outfilestr = build_path + "/target.map";
    ofstream outfile( outfilestr.c_str(), ios::out);
    if ( !outfile)
    {
        cerr << "File cound not be opened: target.map" << endl;
        return;
    }
    
    for (size_t i=0; i < lines.size(); i++) {
        if ( lines[i].find("__ram_image2_text_start__") != std::string::npos ) {
            //cout << lines[i] << endl;
            char pos_str[9];
            memcpy(pos_str, lines[i].c_str(), 8);
            pos_str[8] = 0;
            image2_pos = strtoul(pos_str, NULL, 16);
            //cout << "image2_pos=" << image2_pos << endl;
        }
        outfile << lines[i] << endl;
    }
}

void generate_mapfile(void)
{
    string map_gen = toolchain_prefix + "-nm " + build_path + "/target.axf > " + build_path + "/target.nm ";
    
    system(map_gen.c_str());
    sort_mapfile();
}

int get_binfile_size(const char *filename)
{
    ifstream infile(filename, ios::binary);
    
    infile.seekg(0, ios::end);
    int size = (int)infile.tellg();
    infile.seekg(0, ios::beg);
    infile.close();
    
    return size;
}

void generate_ram1_bin(void)
{
    
    string infilestr = build_path + "/ram_1.bin";
    string outfilestr = build_path + "/ram_1_prepend.bin.pad";
    
    int filesize = get_binfile_size(infilestr.c_str());
    //cout << "file size=" << filesize << endl;
    
    ifstream infile(infilestr.c_str(), ios::binary);
    ofstream outfile(outfilestr.c_str(), ios::binary);
    
    const unsigned char pattern[] = { 0x99, 0x99, 0x96, 0x96,
        0x3F, 0xCC, 0x66, 0xFC,
							 0xC0, 0x33, 0xCC, 0x03,
							 0xE5, 0xDC, 0x31, 0x62 };
    
    outfile.write((const char*)pattern, sizeof(pattern));
    
    // write length
    char lenHexStr[4];
    memcpy(lenHexStr, (char*)&filesize, 4);
    outfile.write(lenHexStr, sizeof(lenHexStr));
    
    // write address
    int address = 0x10000bc8;
    memcpy(lenHexStr, (char*)&address, 4);
    outfile.write(lenHexStr, sizeof(lenHexStr));
    
    // write header_len
    short header_len = 44;
    memcpy(lenHexStr, (char*)&header_len, 2);
    outfile.write(lenHexStr, 2);
    
    for (int i=0; i<6; i++) {
        outfile.put((char)(0xFF));
    }
    
    // write body
    int bytes = filesize;
    if (infile.is_open() && outfile.is_open() ) {
        while ( bytes > 0 ) {
            outfile.put(infile.get());
            bytes--;
        }
    }
    
    for (int i=filesize; i<(45056-32); i++) {
        outfile.put((char)(0xFF));
    }
    
    outfile.close();
    infile.close();
}

void generate_ram2_bin(void)
{
    
    string infilestr = build_path + "/ram_2.bin";
    string outfilestr = build_path + "/ram_2_prepend.bin";
    
    int filesize = get_binfile_size(infilestr.c_str());
    //cout << "file size=" << filesize << endl;
    
    ifstream infile(infilestr.c_str(), ios::binary);
    ofstream outfile(outfilestr.c_str(), ios::binary);
    //
    
    
    // write length
    char lenHexStr[4];
    memcpy(lenHexStr, (char*)&filesize, 4);
    outfile.write(lenHexStr, sizeof(lenHexStr));
    
    // write address
    memcpy(lenHexStr, (char*)&image2_pos, 4);
    outfile.write(lenHexStr, sizeof(lenHexStr));
    
    for (int i=0; i<8; i++) {
        outfile.put((char)(0xFF));
    }
    
    // write body
    int bytes = filesize;
    if (infile.is_open() && outfile.is_open() ) {
        while ( bytes > 0 ) {
            outfile.put(infile.get());
            bytes--;
        }
    }
    
    outfile.close();
    infile.close();
}


void merge_to_ram_all_bin(void)
{
    string outfilestr = build_path + "/ram_all.bin";
    
    ofstream outfile(outfilestr.c_str(), ios::binary);
    
    // ram_1
    string infilestr = build_path + "/ram_1_prepend.bin.pad";
    int filesize = get_binfile_size(infilestr.c_str());
    ifstream infile( infilestr.c_str(), ios::binary);
    
    // write body
    int bytes = filesize;
    if (infile.is_open() && outfile.is_open() ) {
        while ( bytes > 0 ) {
            outfile.put(infile.get());
            bytes--;
        }
    }
    infile.close();
    
    // ram_2
    infilestr = build_path + "/ram_2_prepend.bin";
    filesize = get_binfile_size(infilestr.c_str());
    ifstream infile2(infilestr.c_str(), ios::binary);
    
    // write body
    bytes = filesize;
    if (infile2.is_open() && outfile.is_open() ) {
        while ( bytes > 0 ) {
            outfile.put(infile2.get());
            bytes--;
        }
    }
    infile2.close();

    outfile.close();
}

bool isFileExist(string path) {
    bool ret = false;
    struct stat info;
    
    do {
        if (stat(path.c_str(), &info) != 0) {
            break;
        }
        
        ret = true;
    } while (0);
    
    return ret;
}

int main(int argc, char* argv[])
{
    int ret;
    
    toolchain_prefix = "arm-none-eabi";
    
    
    ret = copy_target_file();
    if ( ret != 0 ) {
        cout << "Copy files error" << endl;
        return ret;
    }
    
    generate_binfiles();
    generate_mapfile();
    generate_ram1_bin();
    generate_ram2_bin();
    merge_to_ram_all_bin();
    
    return 0;
}
