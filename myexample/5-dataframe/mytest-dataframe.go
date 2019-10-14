package main

import (
	"fmt"
	"github.com/neojou/mygota/series"
	"github.com/neojou/mygota/dataframe"
)

func main() {
	df := dataframe.New(
	series.New([]string{"b", "a"}, series.String, "COL.1"),
	series.New([]int{1, 2}, series.Int, "COL.2"),
	series.New([]float64{3.0, 4.0}, series.Float, "COL.3"),
	)
	fmt.Println(df)
}

