package main
import (
	"fmt"
)

func main() {
	repeatLine("hello", 3)
}

func repeatLine(linestr string, count int) {
	for i := 0; i < count; i++ {
		fmt.Println(linestr)
	}
}

