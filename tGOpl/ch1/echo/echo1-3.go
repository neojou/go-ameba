package main

import (
	"fmt"
	"os"
	"time"
	"strings"
)

func main() {

	start1 := time.Now()
	var s, sep string
	for i := 1; i < len(os.Args); i++ {
		s += sep + os.Args[i]
		sep = " "
	}
	fmt.Println(s)

	fmt.Printf("inefficient one spends: %d ns\n", time.Since(start1).Nanoseconds())

	start2 := time.Now()
	fmt.Println(strings.Join(os.Args[1:], " "))
	fmt.Printf("strings.Join spends: %d ns\n", time.Since(start2).Nanoseconds())
}

