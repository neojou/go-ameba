package main

// 8 queen - 92 solutions

import (
	"fmt"
	"sync"
	"sync/atomic"
)

// 8 : 92
// 14 : 365596
const total_queens = 14
var count uint32

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

func solver1(column [total_queens]int, slash [2*total_queens]int, backSlash [2*total_queens]int,
	    queens [total_queens]int, i int) {
	var j int

	if i >= total_queens {
		atomic.AddUint32(&count, 1)
		return
	}

	for j=0; j<total_queens; j++ {
		if isVisitable(i, j, column, slash, backSlash) {
			queens[i] = j
			column[j] = 1
			slash[i + j] = 1
			backSlash[i - j + total_queens] = 1
			solver1(column, slash, backSlash, queens, i + 1)
			column[j] = 0
			slash[i + j] = 0
			backSlash[i - j + total_queens] = 0
		}
	}
}

func solver(column [total_queens]int, slash [2*total_queens]int, backSlash [2*total_queens]int,
	    queens [total_queens]int, index int, num int) {

	for j:=index; j<index+num; j++ {
		queens[0] = j
		column[j] = 1
		slash[j] = 1
		backSlash[total_queens-j] = 1
		solver1(column, slash, backSlash, queens, 1)
		column[j] = 0
		slash[j] = 0
		backSlash[total_queens - j] = 0
	}
}

func main() {
	var column	[4][total_queens]int
	var slash	[4][2*total_queens]int
	var backSlash	[4][2*total_queens]int
	var queens	[4][total_queens]int

	var wg sync.WaitGroup

	wg.Add(4)
	blocks := (int)(total_queens/4)
	go func() { solver(column[0], slash[0], backSlash[0], queens[0], 0, blocks)
		    wg.Done() }()
	go func() { solver(column[1], slash[1], backSlash[1], queens[1], blocks, total_queens/2 - blocks)
		    wg.Done() }()
	go func() { solver(column[2], slash[2], backSlash[2], queens[2], total_queens/2, blocks)
		    wg.Done() }()
	go func() { solver(column[3], slash[3], backSlash[3], queens[3], total_queens/2 + blocks,
			   total_queens - total_queens/2 - blocks)
		    wg.Done() }()

	wg.Wait()
	fmt.Println("total solutions:", count)
}

