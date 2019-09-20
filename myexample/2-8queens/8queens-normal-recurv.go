package main

import (
	"fmt"
)

// 14 - 365596
const total_queens = 14
var count int

func isVisitable(i int, j int, column [total_queens]int, slash [2*total_queens]int, backSlash [2*total_queens]int) bool {
	if column[j] != 0 {
		return false
	}
	if slash[i + j] != 0 {
		return false
	}
	if backSlash[i - j + total_queens] != 0 {
		return false
	}
	return true
}

func solver(column [total_queens]int, slash [2*total_queens]int, backSlash [2*total_queens]int,
	    queens [total_queens]int, i int) {
	var j int

	if i >= total_queens {
		count++
		return
	}

	for j=0; j<total_queens; j++ {
		if isVisitable(i, j, column, slash, backSlash) {
			queens[i] = j
			column[j] = 1
			slash[i + j] = 1
			backSlash[i - j + total_queens] = 1
			solver(column, slash, backSlash, queens, i + 1)
			column[j] = 0
			slash[i + j] = 0
			backSlash[i - j + total_queens] = 0
		}
	}
}

func main() {
	var column	[total_queens]int
	var slash	[2*total_queens]int
	var backSlash	[2*total_queens]int
	var queens	[total_queens]int

	solver(column, slash, backSlash, queens, 0)
	fmt.Println("total solutions:", count)
}

