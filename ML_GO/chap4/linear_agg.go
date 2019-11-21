package main

import (
	"os"
	"log"
	"github.com/kniren/gota/dataframe"
	"gonum.org/v1/plot"
	"gonum.org/v1/plot/plotter"
	"gonum.org/v1/plot/vg"
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

	yVals := advertDF.Col("Sales").Float()

	for _, colName := range advertDF.Names() {
		pts := make(plotter.XYs, advertDF.Nrow())

		for i, floatVal := range advertDF.Col(colName).Float() {
			pts[i].X = floatVal
			pts[i].Y = yVals[i]
		}

		p, err := plot.New()
		if err != nil {
			log.Fatal(err)
		}
		p.X.Label.Text = colName
		p.Y.Label.Text = "y"
		p.Add(plotter.NewGrid())

		s, err := plotter.NewScatter(pts)
		if err != nil {
			log.Fatal(err)
		}
		s.GlyphStyle.Radius = vg.Points(3)

		p.Add(s)
		if err = p.Save(4*vg.Inch, 4*vg.Inch, colName+"_scatter.png"); err != nil {
			log.Fatal(err)
		}
	}
}

