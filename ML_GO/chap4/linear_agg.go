package main

import (
	"fmt"
	"os"
	"log"
	"github.com/kniren/gota/dataframe"
)

type CSVRecord struct {
	SepalLength	float64
	SepalWidth	float64
	PetalLength	float64
	PetalWidth	float64
	Species		string
	ParseError	error
}

func main() {
	advertFile, err1 := os.Open("../data/Advertising.csv")
	if err1 != nil {
		log.Fatal(err1)
	}
	defer advertFile.Close()

	advertDF := dataframe.ReadCSV(advertFile)

	advertSummary := advertDF.Describe()

	fmt.Println(advertSummary)
}

