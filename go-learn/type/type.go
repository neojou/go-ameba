package main

import (
	"fmt"
	"math"
	"reflect"
)

func main() {
	var a uint8 = 3;
	fmt.Println(a)
	fmt.Println(a+255)

	fmt.Printf("uint8: 0 ~ %d\n", math.MaxUint8);
	fmt.Printf("uint16: 0 ~ %d\n", math.MaxUint16);
	fmt.Printf("uint32: 0 ~ %d\n", uint32(math.MaxUint32));
	fmt.Printf("uint64: 0 ~ %d\n", uint64(math.MaxUint32));

	fmt.Printf("int8: %d ~ %d\n", math.MinInt8, math.MaxInt8);
	fmt.Printf("int16: %d ~ %d\n", math.MinInt16, math.MaxInt16);
	fmt.Printf("int32: %d ~ %d\n", math.MinInt32, math.MaxInt32);
	fmt.Printf("int64: %d ~ %d\n", int64(math.MinInt64), int64(math.MaxInt64));
	fmt.Printf("default type: %s\n", reflect.TypeOf(1));
}

