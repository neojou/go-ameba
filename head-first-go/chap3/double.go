package main

import (
	"fmt"
)

func double(val float64) float64 {
	return val * 2
}

func main() {
	dozen := double(6.0)
	fmt.Println(dozen)
	fmt.Println(double(4.2))
}

