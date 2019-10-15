package floats

import (
	"testing"
)

func BenchmarkNorm(b *testing.B) {
	for i := 0; i < b.N; i++ {
		s := []float64{-1, -3.4, 5, -6}
		Norm(s)
	}
}

func BenchmarkNorm1(b *testing.B) {
	for i := 0; i < b.N; i++ {
		s := []float64{-1, -3.4, 5, -6}
		Norm1(s)
	}
}

