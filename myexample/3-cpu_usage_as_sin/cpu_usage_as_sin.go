package main

import (
	"fmt"
	"math"
	"time"
	"sync"
	"runtime"
)

const PIECE = 3600
const TIME_SLICE = 40000000 // 40ms
const CYCLE = 3

var wg sync.WaitGroup

func main() {
	CPU_nums := runtime.NumCPU()
	fmt.Println("CPU numbers: ", CPU_nums)

	wg.Add(CPU_nums)

	for i := 0; i < CPU_nums; i++ {
		go sin_load()
	}	

	wg.Wait()
}

func sin_load() {
	var i float64
	for c:= 0; c < CYCLE; c++ {	
		for i=0; i < PIECE; i++ {
			ratio := math.Sin(math.Pi * i * 2.0 / PIECE) * 0.5 + 0.5
			var run_time time.Duration
			run_time = (time.Duration)(TIME_SLICE * ratio)
	
			now := time.Now()
			for {
				if run_time < time.Since(now) {
					break
				}
			}

			time.Sleep(TIME_SLICE - run_time)
		}
	}
	wg.Done()
}
