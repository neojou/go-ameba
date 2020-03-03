package main

import (
	"github.com/go-gl/gl/v2.1/gl"
//	"github.com/go-gl/glfw/v3.2/glfw"
)

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

