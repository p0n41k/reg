package main

import (
	"fmt"
	"os"
	"runtime"
)

func main() {
	_, mainpath, _, ok := runtime.Caller(0)

	fmt.Println(mainpath)

	os.Exit(1)

	fmt.Println()
	fmt.Println()

	// mainpath, ok := GetPathMainGo()
	if !ok {
		fmt.Println("Some problem with getting the path")
		return
	}

	var paths []string
	paths = append(paths, "../texts/erashiru.txt", "../texts/Erbol.txt", "../texts/text.txt", "../ryadomSCmd.txt")

	for i := 0; i < len(paths); i++ {

		file, err := os.Open(mainpath + paths[i])
		if err != nil {
			fmt.Println(mainpath + paths[i])
			fmt.Println(err)
			return
		}

		fmt.Println("       OK", file)
	}
}

func GetPathMainGo() (string, bool) {
	_, mainpath, _, ok := runtime.Caller(0)
	if !ok {
		return "", false
	}
	for i := len(mainpath) - 1; i > -1; i-- {
		if mainpath[i] == '/' {
			mainpath = mainpath[:i+1]
			break
		}
	}

	return mainpath, true
}
