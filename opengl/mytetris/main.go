package main

import (
//	"fmt"
	"runtime"
	"time"
//	"os"

//	"github.com/4ydx/gltext"
//	"github.com/4ydx/gltext/v4.1"
//	"github.com/go-gl/gl/v4.1-core/gl"
	"github.com/go-gl/gl/v2.1/gl"
	"github.com/go-gl/glfw/v3.2/glfw"
//	"github.com/go-gl/mathgl/mgl32"
//	"golang.org/x/image/math/fixed"
)

const (
	WINDOW_MAIN_SIZE_X	= 800
	WINDOW_MAIN_SIZE_Y	= 600

	W = WINDOW_MAIN_SIZE_X
	H = WINDOW_MAIN_SIZE_Y
)

/* fonts */
//var font *v41.Font
//var txts []*v41.Text

/* windows */

type MyWinFunc interface {
	draw()
}

type MyWin struct {
	sizex	int
	sizey	int
	startx	int
	starty	int
}

type GameWin struct {
	MyWin
}

func (gw GameWin) draw() {
//	fmt.Printf("draw main win: sizex:%d, sizey:%d, startx:%d, starty:%d\n",
//		    gw.sizex, gw.sizey, gw.startx, gw.starty)

	// Border
	draw_rect_border(gw.startx, gw.starty, gw.sizex + gw.startx,
			 gw.sizey + gw.starty, 3)

	tetro.draw(gw.startx - BlockSize + 3, gw.starty + 5)
	draw_field(gw.startx - BlockSize + 3, gw.starty + 5)
}


type NextWin struct {
	MyWin
}

func (gw NextWin) draw() {
//	fmt.Printf("draw main win: sizex:%d, sizey:%d, startx:%d, starty:%d\n",
//		    gw.sizex, gw.sizey, gw.startx, gw.starty)

	// Border
	draw_rect(gw.startx, gw.starty, gw.sizex + gw.startx, gw.sizey + gw.starty)

}

func initGlfw() *glfw.Window {
	if err := glfw.Init(); err != nil {
		panic(err)
	}

	glfw.WindowHint(glfw.Resizable, glfw.False)

	window, err := glfw.CreateWindow(W, H, "mytetris", nil, nil)
	if err != nil {
		panic(err)
	}

	window.MakeContextCurrent()
	window.SetKeyCallback(tetro.keyPress)
	// Timer
	ticker := time.NewTicker(time.Millisecond * TimerPeriod)
	go func() {
		for range ticker.C {
			//fmt.Println("tick")
			tetro.update()
		}
	}()

	return window
}

func initOpenGL() {
	if err := gl.Init(); err != nil {
		panic(err)
	}

	gl.Ortho(0, W, H, 0, -1, 1)
	gl.Enable(gl.DEPTH_TEST)
	gl.DepthFunc(gl.LESS)

	gl.ClearColor(255, 255, 255, 0)
}	

func drawScene(game GameWin, window *glfw.Window) {
	gl.Clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT)

	game.draw()
/*
	for index, text := range txts {
		text.SetPosition(mgl32.Vec2{0, float32(index * 50)})
		text.Draw()

		text.Show()
	}
*/
	window.SwapBuffers()
	glfw.PollEvents()
}

func main() {

	runtime.LockOSThread()

	initGame()

	window := initGlfw()
	defer glfw.Terminate()

	initOpenGL()

/*
	// font setting

	gltext.IsDebug = true

	config, err := gltext.LoadTruetypeFontConfig("fontconfigs", "font_1_honokamin")
	if err == nil {
		font, err = v41.NewFont(config)
		if err != nil {
			panic(err)
		}
		fmt.Println("Font loaded from disk...")
	} else {
		fd, err := os.Open("font/font_1_honokamin.ttf")
		if err != nil {
			panic(err)
		}
		defer fd.Close()

		runeRanges := make(gltext.RuneRanges, 0)
		runeRanges = append(runeRanges, gltext.RuneRange{Low: 32, High: 128})
		runeRanges = append(runeRanges, gltext.RuneRange{Low: 0x3000, High: 0x3030})
		runeRanges = append(runeRanges, gltext.RuneRange{Low: 0x3040, High: 0x309f})
		runeRanges = append(runeRanges, gltext.RuneRange{Low: 0x30a0, High: 0x30ff})
		runeRanges = append(runeRanges, gltext.RuneRange{Low: 0x4e00, High: 0x9faf})
		runeRanges = append(runeRanges, gltext.RuneRange{Low: 0xff00, High: 0xffef})

		scale := fixed.Int26_6(32)
		runesPerRow := fixed.Int26_6(128)
		config, err = gltext.NewTruetypeFontConfig(fd, scale, runeRanges, runesPerRow, 5)
		if err != nil {
			panic(err)
		}
		err = config.Save("fontconfigs", "font_1_honokamin")
		if err != nil {
			panic(err)
		}
		font, err = v41.NewFont(config)
		if err != nil {
			panic(err)
		}
	}
*/

	game := GameWin{MyWin{308, 533, 40, 30}}
	//next := NextWin{MyWin{30, 128, 5, 0}}

/*
	str0 := "0123456789"

	scaleMin, scaleMax := float32(1.0), float32(1.1)
	strs := []string{str0}
	txts = []*v41.Text{}

	for _, str := range strs {
		text := v41.NewText(font, scaleMin, scaleMax)
		text.SetString(str)
		text.SetColor(mgl32.Vec3{1, 1, 1})
		txts = append(txts, text)
	}
*/

	for !window.ShouldClose() {
		drawScene(game, window)
	}
/*
	for _, text := range txts {
		text.Release()
	}
	font.Release()
*/
}


