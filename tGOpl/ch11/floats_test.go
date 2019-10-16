package myfloats

import (
	"math"
	"testing"
)

const (
	EqTolerance = 1e-14
)

func TestNorm(t *testing.T) {
	s := []float64{-1, -3.4, 5, -6}
	val := Norm(s)
	truth := 8.5767126569566267590651614132751986658027271236078592
	if math.Abs(val - truth) > EqTolerance {
		t.Errorf("Doesn't match for inf norm, %v expected, %v found", truth, val)
	}

	val = Norm1(s)
	if math.Abs(val - truth) > EqTolerance {
		t.Errorf("Doesn't match for inf norm, %v expected, %v found", truth, val)
	}

	val = Norm2(s)
	if math.Abs(val - truth) > EqTolerance {
		t.Errorf("Doesn't match for inf norm, %v expected, %v found", truth, val)
	}
}


