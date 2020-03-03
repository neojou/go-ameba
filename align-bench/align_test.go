package myalign

import (
	"testing"
)

func TestRND8(t *testing.T) {
	var sz uint32
	sz = 510
	res := RND8(sz)
	if res != 512 {
		t.Errorf("Calculate wrong - %v, 512 is expected", res)
	}
}

func TestAlign8(t *testing.T) {
	var sz uint32
	sz = 510
	res := align8(sz)
	if res != 512 {
		t.Errorf("Calculate wrong - %v, 512 is expected", res)
	}
}

