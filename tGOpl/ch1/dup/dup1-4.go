package main

import (
	"bufio"
	"fmt"
	"os"
)

var filenames map[string]string

func countLines(f *os.File, counts map[string]int) {
	this_counts := make(map[string]int)
	input := bufio.NewScanner(f)
	for input.Scan() {
		counts[input.Text()]++
		this_counts[input.Text()]++
		if this_counts[input.Text()] == 1 {
			filenames[input.Text()] += f.Name() + ", "
		}
	}
}

func main() {
	counts := make(map[string]int)
	filenames = make(map[string]string)
	files := os.Args[1:]
	if len(files) == 0 {
		countLines(os.Stdin, counts)
	} else {
		for _, arg := range files {
			f, err := os.Open(arg)
			if err != nil {
				fmt.Fprintf(os.Stderr, "dup2: %v\n", err)
				continue
			}
			countLines(f, counts)
			f.Close()
		}
	}

	for line, n := range counts {
		if n > 1 {
			fmt.Printf("%d\t%s\t\t%s\n", n, line, filenames[line])
		}
	}
}

