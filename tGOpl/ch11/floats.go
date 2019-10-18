package myfloats

import (
	"math"
)

func Norm(s []float64) float64 {
	items := len(s)

	if items == 0 {
		return 0
	}

	twoNorm := math.Abs(s[0])
	for i := 1; i < len(s); i++ {
		twoNorm = math.Hypot(twoNorm, s[i])
	}
	return twoNorm
}

func Norm1(s []float64) float64 {
	items := len(s)

	if items == 0 {
		return 0
	}

	var twoNorm float64

	twoNorm = 0
	for i := 0; i < len(s); i++ {
		twoNorm += s[i] * s[i]
	}
	twoNorm = math.Sqrt(twoNorm)
	return twoNorm
}

func Norm2(s []float64) float64 {
	items := len(s)

	if items == 0 {
		return 0
	}

	s0 := s[0]

	switch {
	case math.IsInf(s0, 0):
		return math.Inf(1)
	case math.IsNaN(s0):
		return math.NaN()
	}

	twoNorm := math.Abs(s0)

	for i := 1; i < len(s); i++ {
		switch {
		case math.IsInf(twoNorm, 0):
			return math.Inf(1)
		case math.IsNaN(twoNorm):
			return math.NaN()
		}
		q := math.Abs(s[i])

		if twoNorm < q {
			twoNorm, q = q, twoNorm
		}
		if twoNorm == 0 {
			continue
		}
		q = q / twoNorm
		twoNorm *= math.Sqrt(1+q*q)
	}
	return twoNorm
}

func Dnrm2(s []float64) float64 {
	if len(s) == 1 {
		return math.Abs(s[0])
	}
	var scale	float64 = 0
	var sumSquares	float64 = 1
	for i := 0; i < len(s); i++ {
		absxi := math.Abs(s[i])
		if scale < absxi {
			sumSquares = 1 + sumSquares*(scale/absxi)*(scale/absxi)
			scale = absxi
		} else {
			sumSquares = sumSquares + (absxi/scale)*(absxi/scale)
		}
	}
	if math.IsInf(scale, 1) {
		return math.Inf(1)
	}
	return scale * math.Sqrt(sumSquares)
}

// Distance computes the L-norm of s - t. See Norm for special cases.
// A panic will occur if the lengths of s and t do not match.
func Distance(s, t []float64, L float64) float64 {
	if len(s) != len(t) {
		panic("floats: slice lengths do not match")
	}
	if len(s) == 0 {
		return 0
	}
	var norm float64
	if L == 2 {
		for i, v := range s {
			diff := t[i] - v
			norm = math.Hypot(norm, diff)
		}
		return norm
	}
	if L == 1 {
		for i, v := range s {
			norm += math.Abs(t[i] - v)
		}
		return norm
	}
	if math.IsInf(L, 1) {
		for i, v := range s {
			absDiff := math.Abs(t[i] - v)
			if absDiff > norm {
				norm = absDiff
			}
		}
		return norm
	}
	for i, v := range s {
		norm += math.Pow(math.Abs(t[i]-v), L)
	}
	return math.Pow(norm, 1/L)
}

// Distance computes the L-norm of s - t. See Norm for special cases.
// A panic will occur if the lengths of s and t do not match.
func Distance1(s, t []float64, L float64) float64 {
	if len(s) != len(t) {
		panic("floats: slice lengths do not match")
	}
	if len(s) == 0 {
		return 0
	}
	var norm float64
	if L == 2 {
		if len(s) == 1 {
			return math.Abs(s[0] - t[0])
		}
		var scale	float64 = 0
		var sumSquares	float64 = 1
		for i, sv := range s {
			tv := t[i]
			if sv == tv {
				continue
			}
			absxi := math.Abs(sv - tv)
			if scale < absxi {
				sumSquares = 1 + sumSquares*(scale/absxi)*(scale/absxi)
				scale = absxi
			} else {
				sumSquares = sumSquares + (absxi/scale)*(absxi/scale)
			}
		}
		if math.IsInf(scale, 1) {
			return math.Inf(1)
		}
		return scale * math.Sqrt(sumSquares)
	}
	if L == 1 {
		for i, v := range s {
			norm += math.Abs(t[i] - v)
		}
		return norm
	}
	if math.IsInf(L, 1) {
		for i, v := range s {
			absDiff := math.Abs(t[i] - v)
			if absDiff > norm {
				norm = absDiff
			}
		}
		return norm
	}
	for i, v := range s {
		norm += math.Pow(math.Abs(t[i]-v), L)
	}
	return math.Pow(norm, 1/L)
}



