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

func BenchmarkDistance(b *testing.B) {
	s := []float64{1, 2, 3, -4, -5, 8}
	t := []float64{-9.2, -6.8, 9, -3, -2, 1}

	for i := 0; i < b.N; i++ {
		Distance(s, t, 2)
	}
}

func BenchmarkDistance1(b *testing.B) {
	s := []float64{1, 2, 3, -4, -5, 8}
	t := []float64{-9.2, -6.8, 9, -3, -2, 1}

	for i := 0; i < b.N; i++ {
		Distance1(s, t, 2)
	}
}
