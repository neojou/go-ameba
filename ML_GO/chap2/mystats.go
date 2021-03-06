package main

import (
	"fmt"
	"os"
	"log"
	"github.com/kniren/gota/dataframe"
	"github.com/gonum/stat"
	"github.com/montanaflynn/stats"
)


func main() {
	irisFile, err := os.Open("../data/iris.csv")
	if err != nil {
		log.Fatal(err)
	}

	irisDF := dataframe.ReadCSV(irisFile)

	sepalLength := irisDF.Col("sepal_length").Float()

	meanVal := stat.Mean(sepalLength, nil)

	modeVal, modeCount := stat.Mode(sepalLength, nil)

	medianVal, err := stats.Median(sepalLength)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Printf("\nSepal Length Summary Statistics:\n")
	fmt.Printf("Mean value: %0.2f\n", meanVal)
	fmt.Printf("Mode Value: %0.2f\n", modeVal)
	fmt.Printf("Mode count: %d\n", int(modeCount))
	fmt.Printf("Median value: %0.2f\n\n", medianVal)
}

