package main

import (
	"fmt"
	"strings"
)

type Logs struct {
	login    string
	password string
}

var User Logs

func init() {
	User.login = "ynurmakh"
	User.password = "123456"
}

func main() {
	fmt.Println("\n" + "FastReg_By_p0n41k" + "\n")
	fmt.Println("Enter the password for " + strings.ToUpper(User.login) + ": ")

	for i := 0; i < 3; i++ {
		var pass string
		fmt.Scan(&pass)

		if pass == User.password {
			fmt.Println("OK!")
			break
		} else {
			fmt.Println("Wrong password")
		}
	}

	// fmt.Println(pass)
}
