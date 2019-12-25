package main

import (
	"fmt"
)

func showNotes(notes ...string) {
	fmt.Println(notes)
}

func main() {
	notes := [7]string{"do", "re", "mi", "fa", "so", "la", "ti"}

	slice1 := notes[1:3]
	slice1 = append(slice1, "x")
	slice1 = append(slice1, "y", "z")

	for _, note := range slice1 {
		fmt.Println(note)
	}

	showNotes(slice1[0], slice1[1])
}

