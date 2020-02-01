package main

import (
//	"fmt"
	"runtime"
//	"time"

	"github.com/go-gl/gl/v2.1/gl"
	"github.com/go-gl/glfw/v3.2/glfw"
)

const (
	WINDOW_MAIN_SIZE_X	= 800
	WINDOW_MAIN_SIZE_Y	= 600

	BlockSize	= 20
	FieldHeight	= 20
	FieldWidth	= 10
	TetroSize	=4

	W = WINDOW_MAIN_SIZE_X
	H = WINDOW_MAIN_SIZE_Y
)

/* objects */

func glVertex(x, y int) {
	gl.Vertex2i(int32(x), int32(y))
}

func draw_line(x1, y1, x2, y2 int) {
	gl.Begin(gl.LINES)
	glVertex(x1, y1)
	glVertex(x2, y2)
	gl.End()
}

func draw_rect(x1, y1, x2, y2 int) {
	//fmt.Printf("x1:%d, y1:%d, x2:%d, y2:%d\n", x1, y1, x2, y2)
	gl.Begin(gl.POLYGON);
	glVertex(x1, y1)
	glVertex(x2, y1)
	glVertex(x2, y2)
	glVertex(x1, y2)
	gl.End()
}

func draw_rect_border(x1, y1, x2, y2, width int) {
	gl.Color3f(0, 0, 0)
	draw_rect(x1, y1, x2, y1 + width)
	draw_rect(x2 - width, y1, x2, y2)
	draw_rect(x1, y2 - width, x2, y2)
	draw_rect(x1, y1, x1 + width, y2)
}

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

	draw_rect_border(gw.startx, gw.starty, gw.sizex + gw.startx,
			 gw.sizey + gw.starty, 3)
}


type NextWin struct {
	MyWin
}

func (gw NextWin) draw() {
//	fmt.Printf("draw main win: sizex:%d, sizey:%d, startx:%d, starty:%d\n",
//		    gw.sizex, gw.sizey, gw.startx, gw.starty)

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

	window.SwapBuffers()
}

func main() {

	runtime.LockOSThread()

	window := initGlfw()
	defer glfw.Terminate()

	initOpenGL()

	game := GameWin{MyWin{360, 540, 40, 30}}
	//next := NextWin{MyWin{30, 128, 5, 0}}

	for !window.ShouldClose() {
		drawScene(game, window)
		glfw.PollEvents()
	}
}


