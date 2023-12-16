#!/bin/bash

paste="\ \ \ \ login := 1\n\ \ \ \ pass := \"password\"\n\ \ \ \ fmt.Println(pass)"


sed -i "6i$paste" main.go 


go build main.go