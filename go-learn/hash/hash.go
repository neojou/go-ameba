package main

import (
	"fmt"
	"time"
)

const table_size int = 90
const loops int = 100000

func init_arr() [][]int{
	arr := make([][]int, table_size)
	for i:=0; i<table_size; i++ {
		arr[i] = make([]int, 2)
		arr[i][0] = 100+i*2;
		arr[i][1] = 1000+i*2;
	}
	return arr
}

func init_map() map[int]int{
	amap := make(map[int]int, table_size)
	for i:=0; i<table_size; i++ {
		amap[100+i*2] = 1000+i*2;
	}
	return amap
}

func show_arr(arr [][]int) {
	for i:=0; i<table_size; i++ {
		fmt.Printf("[%d]", i);
		fmt.Printf("key[%d] value[%d]\n", arr[i][0], arr[i][1]);
	}
}


func find_val_1(arr [][]int, key int) int {
	for i:=0; i<table_size; i++ {
		if arr[i][0] == key {
			return arr[i][1];
		}
	}
	return -1;
}

func find_val_by_map(amap map[int]int, key int) int {
	return amap[key]
}


func test1(arr [][]int) {
	var result int
	for i:=0; i<loops; i++ {
		result = find_val_1(arr, 100+table_size)
	}
	fmt.Printf("Find val - %d\n", result)
}

func test2(amap map[int]int) {
	var result int
	for i:=0; i<loops; i++ {
		result = find_val_by_map(amap, 100+table_size)
	}
	fmt.Printf("Find val - %d\n", result)
}


func main() {

	arr := init_arr()
	//show_arr(arr);

	start := time.Now()
	test1(arr)
	fmt.Println(time.Since(start))

	//
	amap := init_map()

	start = time.Now()
	test2(amap)
	fmt.Println(time.Since(start))

}

