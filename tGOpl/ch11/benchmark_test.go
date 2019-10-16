package myfloats

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

func BenchmarkNorm2(b *testing.B) {
	for i := 0; i < b.N; i++ {
		s := []float64{-1, -3.4, 5, -6}
		Norm2(s)
	}
}

func BenchmarkDistance(b *testing.B) {
	for i := 0; i < b.N; i++ {
		s := []float64{8, 9, 10, -12}
		t := []float64{8, 9, 10, -12}
		Distance(s, t, 2)
	}
}

func BenchmarkDistance2(b *testing.B) {
	for i := 0; i < b.N; i++ {
		s := []float64{8, 9, 10, -12}
		t := []float64{8, 9, 10, -12}
		Distance2(s, t, 2)
	}
}


