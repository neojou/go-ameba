
/* Use of this source code is governed by a MIT license that can be
 * found in the LICENSE file.
 */

package main

import (
	"fmt"
	"math/rand"
	"time"

	"github.com/go-gl/gl/v2.1/gl"
	"github.com/go-gl/glfw/v3.2/glfw"
)

/* Tetro */


type TetroType int

const (
	BLOCK_SQUARE	TetroType = iota
	BLOCK_LINE
	BLOCK_TEE
	BLOCK_ZEE_1
	BLOCK_ZEE_2
	BLOCK_ELL_1
	BLOCK_ELL_2
	TOTAL_BLOCKS
)

type TetroDegree int

const (
	DEG_0 TetroDegree = iota
	DEG_90
	DEG_180
	DEG_270
	TOTAL_DEGREES
)

type Point struct {
	x int
	y int
}

const (
	BlockSize	= 25
	FieldHeight	= 20
	FieldWidth	= 12

	TetroSize	= 4
	TimerPeriod = 250 // milliseconds
)

type Position struct {
	pos [TetroSize]Point
}

var tetro_blocks [][]Position = [][]Position {
	{
	/* [BLOCK_SQUARE] */
		{[TetroSize]Point{{1, 1}, {2, 1}, {1, 2}, {2, 2}}}, /* DEG_0 */
                {[TetroSize]Point{{1, 1}, {2, 1}, {1, 2}, {2, 2}}}, /* DEG_90 */
                {[TetroSize]Point{{1, 1}, {2, 1}, {1, 2}, {2, 2}}}, /* DEG_180 */
                {[TetroSize]Point{{1, 1}, {2, 1}, {1, 2}, {2, 2}}}, /* DEG_270 */
        },
        /* [BLOCK_LINE] = */
            {
                {[TetroSize]Point{{0, 1}, {1, 1}, {2, 1}, {3, 1}}}, /* DEG_0 */
                {[TetroSize]Point{{2, 0}, {2, 1}, {2, 2}, {2, 3}}}, /* DEG_90 */
                {[TetroSize]Point{{0, 1}, {1, 1}, {2, 1}, {3, 1}}}, /* DEG_180 */
                {[TetroSize]Point{{2, 0}, {2, 1}, {2, 2}, {2, 3}}}, /* DEG_270 */
            },
        /* [BLOCK_TEE] = */
            {
                {[TetroSize]Point{{1, 0}, {0, 1}, {1, 1}, {2, 1}}}, /* DEG_0 */
                {[TetroSize]Point{{1, 0}, {1, 1}, {1, 2}, {2, 1}}}, /* DEG_90 */
                {[TetroSize]Point{{0, 1}, {1, 1}, {2, 1}, {1, 2}}}, /* DEG_180 */
                {[TetroSize]Point{{0, 1}, {1, 0}, {1, 1}, {1, 2}}}, /* DEG_270 */
            },
        /* [BLOCK_ZEE_1] = */
            {
                {[TetroSize]Point{{2, 0}, {1, 1}, {2, 1}, {1, 2}}}, /* DEG_0 */
                {[TetroSize]Point{{0, 1}, {1, 1}, {1, 2}, {2, 2}}}, /* DEG_90 */
                {[TetroSize]Point{{1, 0}, {1, 1}, {0, 1}, {0, 2}}}, /* DEG_180 */
                {[TetroSize]Point{{0, 0}, {0, 1}, {1, 1}, {1, 2}}}, /* DEG_270 */
            },
        /* [BLOCK_ZEE_2] = */
            {
                {[TetroSize]Point{{0, 0}, {0, 1}, {1, 1}, {1, 2}}}, /* DEG_0 */
                {[TetroSize]Point{{2, 1}, {1, 1}, {1, 2}, {0, 2}}}, /* DEG_90 */
                {[TetroSize]Point{{0, 0}, {0, 1}, {1, 1}, {1, 2}}}, /* DEG_180 */
                {[TetroSize]Point{{2, 1}, {1, 1}, {1, 2}, {0, 2}}}, /* DEG_270 */
            },
        /* [BLOCK_ELL_1] = */
            {
                {[TetroSize]Point{{1, 0}, {1, 1}, {1, 2}, {2, 2}}}, /* DEG_0 */
                {[TetroSize]Point{{0, 1}, {1, 1}, {2, 1}, {0, 2}}}, /* DEG_90 */
                {[TetroSize]Point{{0, 0}, {1, 0}, {1, 1}, {1, 2}}}, /* DEG_180 */
                {[TetroSize]Point{{2, 0}, {0, 1}, {1, 1}, {2, 1}}}, /* DEG_270 */
            },
        /* [BLOCK_ELL_2] = */
            {
                {[TetroSize]Point{{2, 0}, {1, 0}, {1, 1}, {1, 2}}}, /* DEG_0 */
                {[TetroSize]Point{{0, 1}, {1, 1}, {2, 1}, {2, 2}}}, /* DEG_90 */
                {[TetroSize]Point{{0, 2}, {1, 0}, {1, 1}, {1, 2}}}, /* DEG_180 */
                {[TetroSize]Point{{0, 0}, {0, 1}, {1, 1}, {2, 1}}}, /* DEG_270 */
            },
}


type Tetro struct {
	posY int
	posX int
	tetroType TetroType
	rotationIdx TetroDegree
	isEnd bool
}

type Color struct { R, G, B int }

var (

	// field[y][x] contains the color of the block with (x,y) coordinates
	// (unless < 1). Has borders comprised of -1, so that bounds checking is
	// not needed:
	// -1 -1 -1 -1
	// -1  0  0 -1
	// -1  0  0 -1
	// -1 -1 -1 -1
	field [][]int

	tetro Tetro

	Colors = []Color{
		Color{0, 0, 0},
		Color{170, 0, 0},
		Color{192, 192, 192},
		Color{170, 0, 170},
		Color{0, 0, 170},
		Color{0, 170, 0},
		Color{170, 85, 0},
		Color{0, 170, 170},
	}
)

func setColor(colorIdx int) {
	c := Colors[colorIdx]
	gl.Color3ub(uint8(c.R), uint8(c.G), uint8(c.B))
}

func draw_block(x, y, shiftx, shifty int) {
	x1 := x * BlockSize + shiftx
	y1 := y * BlockSize + shifty
	x2 := x1 + BlockSize
	y2 := y1 + BlockSize
	draw_rect(x1, y1, x2, y2)
}

func (tetro *Tetro) draw(shiftx, shifty int) {
	setColor(int(tetro.tetroType) + 1)
	for i := 0; i < TetroSize; i++ {
		p := tetro_blocks[tetro.tetroType][tetro.rotationIdx].pos[i]
		draw_block(tetro.posX + p.x, tetro.posY + p.y, shiftx, shifty)
	}
}

func draw_field(shiftx, shifty int) {
	for i := 1; i < FieldHeight + 1; i++ {
		for j := 1; j < FieldWidth + 1; j++ {
			if field[i][j] > 0 {
				setColor(field[i][j])
				draw_block(j, i, shiftx, shifty)
			}
		}
	}
}

func (tetro *Tetro) generate() {
	tetro.posY = 0
	tetro.posX = FieldWidth/2 - TetroSize/2
	tetro.tetroType = TetroType(rand.Intn(int(TOTAL_BLOCKS)))
	tetro.rotationIdx = DEG_0
	tetro.isEnd = false
}

func (tetro *Tetro) leave() {
	for i := 0; i < TetroSize; i++ {
		p := tetro_blocks[tetro.tetroType][tetro.rotationIdx].pos[i]
		x := tetro.posX + p.x
		y := tetro.posY + p.y
		field[y][x] = (int)(tetro.tetroType) + 1
	}
}

func (tetro *Tetro)test_movement(dx, dy, ridx int) bool {
	for i := 0; i < TetroSize; i++ {
		p := tetro_blocks[tetro.tetroType][ridx].pos[i]
		x := tetro.posX + p.x + dx
		y := tetro.posY + p.y + dy
		if ((x < 1) || (x > FieldWidth) ||
		    (y < 1) || (y > FieldHeight)) {
			return false
		}

		if field[y][x] != 0 {
			return false
		}
	}

	return true
}

func (tetro *Tetro)moveRotate() {
	idx := TetroDegree(int(tetro.rotationIdx) + 1)
	if idx == TOTAL_DEGREES {
		idx = DEG_0 
	}
	if (tetro.test_movement(0, 0, int(idx))) {
		tetro.rotationIdx = idx
	}
}

func (tetro *Tetro)moveRight(dx int) {
	if (tetro.test_movement(dx, 0, int(tetro.rotationIdx))) {
		tetro.posX += dx
	}
}

func deleteCompletedLine(y int) {
	for x := 1; x <= FieldWidth; x++ {
		if field[y][x] == 0 {
			return
		}
	}
	// Move everything down by 1 position
	for y = y - 1; y >= 1; y-- {
		for x := 1; x <= FieldWidth; x++ {
			field[y+1][x] = field[y][x]
		}
	}
}

func deleteCompletedLines() {
	for y := FieldHeight; y >= 1; y-- {
		deleteCompletedLine(y)
	}
}


func (tetro *Tetro)moveDown() {
	if (tetro.test_movement(0, 1, int(tetro.rotationIdx))) {
		tetro.posY++
	} else {
		if tetro.posY  < 2 {
			fmt.Println("End of Game")
			tetro.isEnd = true
			return
		}
		tetro.leave()
		tetro.generate()
	}
}

func (tetro *Tetro)moveDrop() {
	for ; tetro.test_movement(0, 1, int(tetro.rotationIdx)); tetro.posY++ {
	}
}

func (tetro *Tetro)update() {
	if (tetro.isEnd) {
		return;
	}

	tetro.moveDown()
	deleteCompletedLines()
}
	

func (tetro *Tetro)keyPress(w *glfw.Window, k glfw.Key, s int, act glfw.Action, mods glfw.ModifierKey) {

	if (tetro.isEnd) {
		return;
	}
	
	if act != glfw.Press {
		return
	}
	// Rotation
	switch k {
	case glfw.KeyUp:
		tetro.moveRotate()
	// Move left/right
	case glfw.KeyLeft:
		tetro.moveRight(-1)
	case glfw.KeyRight:
		tetro.moveRight(1)
	case glfw.KeyDown:
		tetro.moveDrop()
	}
}

func initGame() {
	rand.Seed(time.Now().Unix())
	field = make([][]int, FieldHeight + 2)
	for i := 0; i < FieldHeight + 2; i++ {
		field[i] = make([]int, FieldWidth + 2)
		for j := 0; j < FieldWidth + 2; j++ {
			field[i][j] = 0
			if i == 0 || i == FieldHeight + 1 ||
			   j == 0 || j == FieldWidth + 1 {
				field[i][j] = -1
			}
		}
	}

	tetro.generate()
}

