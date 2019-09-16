package main

import (
	"encoding/json"
	"fmt"
)

type Message struct {
	Name	string
	Body	string
	Time	int64
}


func main() {
	m1 := Message{"Alice", "Hello", 1294706395881547000}
	fmt.Printf("m1=%#v\n", m1)

	b, err := json.Marshal(m1)
	if err != nil {
		panic(err)
	}
	fmt.Println("after json marshal: b=", string(b))

	var m2 map[string]interface{}
	err = json.Unmarshal(b, &m2)
	if err != nil {
		panic(err)
	}
	fmt.Println("m2=", m2)
}

