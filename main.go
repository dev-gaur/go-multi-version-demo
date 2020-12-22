package main

import (
"fmt"
errors081 "github.com/pkg/errors/081"
errors091 "github.com/pkg/errors/091"
)

func main() {
	err := errors081.New("New error for v0.8.1")
	fmt.Println(err)
	err = errors091.New("New error for v0.9.1")
	fmt.Println(err)
}