package myfloats

import (
	"math"
	"testing"

	"gonum.org/v1/gonum/floats"
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


func TestDistance(t *testing.T) {
	slices := []struct {
		s []float64
		t []float64
	}{
		{
			nil,
			nil,
		},
		{
			[]float64{8, 9, 10, -12},
			[]float64{8, 9, 10, -12},
		},
		{
			[]float64{1, 2, 3, -4, -5, 8},
			[]float64{-9.2, -6.8, 9, -3, -2, 1},
		},
	}

	for j, test := range slices {
		tmp := make([]float64, len(test.s))
			dist := Distance(test.s, test.t, 2)
			copy(tmp, test.s)
			floats.Sub(tmp, test.t)
			norm := Norm(tmp)
			if dist != norm { // Use equality because they should be identical
				t.Errorf("Distance does not match norm for case %v. Expected %v, Found %v.", j, norm, dist)
			}
	}


	for j, test := range slices {
		tmp := make([]float64, len(test.s))
			dist := Distance2(test.s, test.t, 2)
			copy(tmp, test.s)
			floats.Sub(tmp, test.t)
			norm := Norm2(tmp)
			if dist != norm { // Use equality because they should be identical
				t.Errorf("Distance does not match norm for case %v. Expected %v, Found %v.", j, norm, dist)
			}
	}

}
