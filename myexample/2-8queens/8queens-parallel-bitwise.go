package main

import (
	"fmt"
	"sync"
	"sync/atomic"
)

//8 - 92
//14 - 365596
const total_queens = 14

func BIT(n uint) uint {
	return 1<<n;
}

var count uint32;
var max_value uint

func solver1(maj_con uint, min_con uint, col_con uint) {
	if col_con == (uint)(BIT(total_queens) - 1) {
		atomic.AddUint32(&count,1)
		return
	}

	D := (^(maj_con|min_con| col_con)) & max_value

	for D != 0 {
		var bit uint
		bit = D & (-D) & max_value
		D -= bit
		solver1((maj_con|bit)>>1, (min_con|bit)<<1, col_con|bit)
	}
}

func solver(index uint, num uint) {
	for i:=index; i<index+num; i++ {
		bit := BIT(i)
		solver1(bit>>1, bit<<1, bit)
	}
}

func main() {
	count = 0
	max_value = BIT(total_queens)-1
	blocks := (uint)(total_queens/4)

	var wg sync.WaitGroup

	wg.Add(4)
	go func() { solver(0, blocks)
		  wg.Done() }()
	go func() { solver(blocks, total_queens/2 - blocks)
		  wg.Done() }()
	go func() { solver(total_queens/2, blocks)
		  wg.Done() }()
	go func() { solver(total_queens/2+blocks, total_queens - total_queens/2 - blocks)
		  wg.Done() }()
	wg.Wait()
	fmt.Println("total solutions:", count)
}
