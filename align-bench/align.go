package myalign

import (
)

func RND8(sz uint32) uint32 {
	var res uint32
	res = sz >> 3
	if (sz & 7) != 0 {
		res++
	}
	res <<= 3
	return res;
}

func align8(sz uint32) uint32 {
	var mask uint32
	mask = 8 - 1
	return (sz + mask) & (^mask)
}

