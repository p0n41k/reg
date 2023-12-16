package main

import (
	formatprint "fmt"
	. "strings"
)

func main() {
	login := 1
	pass := "password"
	formatprint.Println(pass)
	formatprint.Println(login)

	formatprint.Println(ToUpper(pass))
}
