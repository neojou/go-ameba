package main

import (
	"fmt"
	"time"
	"sync"
)

func main() {
	var ops uint64
	var mutex = &sync.Mutex{}

	for i := 0; i < 50; i++ {
		go func() {
			for i := 0; i < 100; i++ {
				mutex.Lock()
				ops++
				mutex.Unlock()
			}
		}()
	}

	time.Sleep(time.Second)

	mutex.Lock()
	opsFinal := ops
	mutex.Unlock()
	fmt.Println("ops:", opsFinal)
}

