package main

import (
	"fmt"
)

//8 - 92
//14 - 365596
const total_queens = 14

func BIT(n uint) uint {
	return 1<<n;
}

var count uint;
var max_value uint

func solver(maj_con uint, min_con uint, col_con uint) {
	if col_con == (uint)(BIT(total_queens) - 1) {
		count++
		return
	}

	D := (^(maj_con|min_con| col_con)) & max_value

	for D != 0 {
		var bit uint
		bit = D & (-D) & max_value
		D -= bit
		solver((maj_con|bit)>>1, (min_con|bit)<<1, col_con|bit)
	}
}

func main() {
	count = 0
	max_value = BIT(total_queens)-1
	solver(0, 0, 0)
	fmt.Println("total solutions:", count)
}
