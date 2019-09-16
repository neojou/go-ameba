package main

import (
	"fmt"
)

func BIT(n uint) uint {
	return 1<<n;
}

var count int;

func solver(maj_con uint8, min_con uint8, col_con uint8) {
	if col_con == (uint8)(BIT(8) - 1) {
		count++
		return
	}

	D := ^(maj_con|min_con| col_con)

	for D != 0 {
		var bit uint8
		bit = D & (-D)
		D -= bit
		solver((maj_con|bit)>>1, (min_con|bit)<<1, col_con|bit)
	}
}

func main() {
	count = 0
	solver(0, 0, 0)
	fmt.Println("total solutions:", count)
}
