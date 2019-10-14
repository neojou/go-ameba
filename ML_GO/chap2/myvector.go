package main

import (
	"fmt"
	"math"
	"github.com/neojou/mygota/gonum/floats"
)

// triangle : 1, sqrt(3), 2; 30 degree, 60 degree, 90 degree
// A: (sqrt(3), 0), C: (sqrt(3), 1) 
// cos30 = sqrt(3)/2 = A * C / |A| * |C|

func main() {
	sqrt3 := math.Sqrt(3)  // 1.73205080757
	cos30 := math.Cos(math.Pi/6)
	vectorA := []float64{sqrt3, 0}
	vectorC := []float64{sqrt3, 1}

	fmt.Printf("vectorA=%v\n", vectorA)
	fmt.Printf("vectorC=%v\n", vectorC)

	dotProduct := floats.Dot(vectorA, vectorC)
	fmt.Printf("A*C=%v\n", dotProduct)

	normA := floats.Norm(vectorA, 2)
	normC := floats.Norm(vectorC, 2)
	fmt.Printf("normC = %f\n", normC)
	angle := dotProduct / (normA * normC)
	fmt.Printf("cos30   = %f\n", cos30)
	fmt.Printf("angle   = %f\n", angle)
	fmt.Printf("sqrt3/2 = %f\n", sqrt3/2)
}

