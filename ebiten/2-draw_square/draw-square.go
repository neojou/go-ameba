package main

import (
	"log"
	"image/color"

	"github.com/hajimehoshi/ebiten"
	"github.com/hajimehoshi/ebiten/ebitenutil"
)

func update(screen *ebiten.Image) error {
	if ebiten.IsDrawingSkipped() {
		return nil
	}
	ebitenutil.DebugPrint(screen, "Hello, World!")

	square, _ := ebiten.NewImage(16, 16, ebiten.FilterNearest)
	square.Fill(color.White)
	opts := &ebiten.DrawImageOptions{}
	opts.GeoM.Translate(64, 64)
	screen.DrawImage(square, opts)

	return nil
}

func main() {
	if err := ebiten.Run(update, 320, 240, 2, "Hello, World!"); err != nil {
		log.Fatal(err)
	}
}

