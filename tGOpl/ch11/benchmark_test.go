package myfloats

import (
	"testing"
)

func BenchmarkNorm(b *testing.B) {
	s := []float64{-1, -3.4, 5, -6, 7, 8, -9, 10}
	for i := 0; i < b.N; i++ {
		Norm(s)
	}
}

func BenchmarkNorm2(b *testing.B) {
	s := []float64{-1, -3.4, 5, -6, 7, 8, -9, 10}
	for i := 0; i < b.N; i++ {
		Norm2(s)
	}
}

