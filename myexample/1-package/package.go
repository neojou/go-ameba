package main

import (
	"fmt"
	"neo"
)

func main() {
	xs := []float64 {1,2,3,4}
	avg := neo.Average(xs)
	fmt.Println(avg)
}

