package floats

import (
	"math"
)

func Norm(s []float64) float64 {
	twoNorm := math.Abs(s[0])
	for i := 1; i < len(s); i++ {
		twoNorm = math.Hypot(twoNorm, s[i])
	}
	return twoNorm
}

func Norm1(s []float64) float64 {
	var twoNorm float64

	twoNorm = 0
	for i := 0; i < len(s); i++ {
		twoNorm += s[i] * s[i]
	}
	twoNorm = math.Sqrt(twoNorm)
	return twoNorm
}


