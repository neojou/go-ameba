package main

import (
	"bufio"
	"fmt"
	"log"
	"math/rand"
	"os"
	"strconv"
	"strings"
)

func main() {
	target := rand.Intn(100) + 1

	correct := false
	for guesses := 0; guesses < 10; guesses++ {
		fmt.Print("Guess number (1-100): ")

		reader := bufio.NewReader(os.Stdin)
		guessStr, err := reader.ReadString('\n')
		if err != nil {
			log.Fatal(err)
		}

		guessStr = strings.TrimSpace(guessStr)
		guess, err := strconv.Atoi(guessStr)
		if err != nil {
			log.Fatal(err)
		}

		if target > guess {
			fmt.Println("Oops. Your guess was LOW")
		} else if target < guess {
			fmt.Println("Oops. Your guess was HIGH")
		} else {
			fmt.Println("Good job! You guessed it!")
			correct = true
			break
		}
	}

	if !correct {
		fmt.Println("You didn't guess my number, It was: ", target)
	}
}
