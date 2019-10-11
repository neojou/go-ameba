package main

import (
	"fmt"
	"image"
	"image/color"
	"image/jpeg"
	"log"
	"os"
)

const (
	dx = 500
	dy = 200
)

func main() {
	file, err := os.Create("test.jpeg")
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()
	alpha := image.NewAlpha(image.Rect(0, 0, dx, dy))
	for x := 0; x < dx; x++ {
		for y := 0; y < dy; y++ {
			alpha.Set(x, y, color.Alpha{uint8(x % 256)})
		}
	}

	fmt.Println(alpha.At(400, 100))
	fmt.Println(alpha.Bounds())
	fmt.Println(alpha.Opaque())
	fmt.Println(alpha.PixOffset(1, 1))
	fmt.Println(alpha.Stride)
	jpeg.Encode(file, alpha, nil)
}

