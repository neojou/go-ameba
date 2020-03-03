package myalign

import (
	"testing"
	"math/rand"
)

func BenchmarkRND8(b *testing.B) {
	for i := 0; i < b.N; i++ {
		sz := rand.Uint32()
		RND8(sz)
	}
}

func BenchmarkAlign8(b *testing.B) {
	for i := 0; i < b.N; i++ {
		sz := rand.Uint32()
		align8(sz)
	}
}

