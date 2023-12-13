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
			fmt.Println("Wrong password", i+1, "/ 3")
			if i == 2 {
				Samounjtojenie()
			}
		}
	}
}

func TheReg() {
	fmt.Println("Start the Script")
}

func Samounjtojenie() {
	fmt.Println("Samounjtojenie")
	fmt.Println("Zapret na 30 sek")
	fmt.Println("Zapret na 120 sek")
	fmt.Println("Zapret na 300 sek")
	fmt.Println("Zapret prmomment")
}
