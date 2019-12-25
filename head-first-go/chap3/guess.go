package main

import (
	"bufio"
	"fmt"
	"log"
	"math/rand"
	"os"
	"strconv"
	"strings"
	"time"
)

func status(guess int, target int) string {
	var ret string

	if target > guess {
		ret = "Oops. Your guess was LOW"
	} else if target < guess {
		ret = "Oops. Your guess was HIGH"
	} else {
		ret = "Good job! You guessed it!"
	}

	return ret
}

func main() {
	seconds := time.Now().Unix()
	rand.Seed(seconds)
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

		fmt.Println(status(guess, target))
		if target == guess {
			correct = true
			break
		}
	}

	if !correct {
		fmt.Println("You didn't guess my number, It was: ", target)
	}
}
