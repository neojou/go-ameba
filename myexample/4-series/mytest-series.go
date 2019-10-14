package main

import (
	"fmt"
	"github.com/neojou/mygota/series"
)

func main() {
	s1 := series.New([]string{"b", "a"}, series.String, "COL.1")
	fmt.Println(s1)
	s2 := series.New([]int{1, 2}, series.Int, "COL.2")
	fmt.Println(s2)
	s3 := series.New([]float64{3.0, 4.0}, series.Int, "COL.3")
	fmt.Println(s3)
}

