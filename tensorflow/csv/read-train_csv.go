package main

import (
	"bufio"
	"encoding/csv"
	"fmt"
	"io"
	"os"
)

func main() {
	f, err1 := os.Open("train.csv")
	if err1 != nil {
		fmt.Println("open train.csv file failed");
		return;
	}

	r := csv.NewReader(bufio.NewReader(f))
	for i:=0; i<5; i++ {
		record, err2 := r.Read()
		if err2 == io.EOF {
			break;
		}

		fmt.Println(record)
		fmt.Println(len(record))
		for value := range record {
			fmt.Printf(" %v\n", record[value])
		}
	}
}

