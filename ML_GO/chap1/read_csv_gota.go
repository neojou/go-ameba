package main

import (
	"fmt"
	"os"
	"github.com/neojou/mygota/dataframe"
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
	f, err1 := os.Open("iris.csv")
	if err1 != nil {
		fmt.Println("open csv file failed");
		return;
	}
	defer f.Close()

	irisDF := dataframe.ReadCSV(f)

	fmt.Println(irisDF)

	// filter : choose the one which is versicolor in species field
	filter := dataframe.F {
		Colname: "species",
		Comparator: "==",
		Comparando: "versicolor",
	}

	versicolorDF := irisDF.Filter(filter)
	if versicolorDF.Err != nil {
		fmt.Println(versicolorDF.Err)
	}
	fmt.Println(versicolorDF)

	// choose only two fields: sepal_width and species
	versicolorDF = versicolorDF.Select([]string{"sepal_width", "species"})
	fmt.Println(versicolorDF)
}

