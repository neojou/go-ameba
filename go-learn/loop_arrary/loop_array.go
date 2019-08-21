package main

import (
	"fmt"
)

func main() {
	arr := [...]int{1,2,3}
	fmt.Printf("Loop1 - ")
	for i := 0; i < len(arr); i++ {
		fmt.Printf("%d ", arr[i])
	}
	fmt.Printf("\n")

	fmt.Printf("Loop2 - ")
	for index, element := range arr {
		fmt.Printf("[%d]%d ", index, element)
	}
	fmt.Printf("\n")

	fmt.Printf("Loop3 - ")
	for _, element := range arr {
		fmt.Printf("%d ", element)
	}
	fmt.Printf("\n")
}

