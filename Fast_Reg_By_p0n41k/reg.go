package main

import (
	"fmt"
	"os"
	"os/exec"
	"os/signal"
	"strconv"
	"strings"
	"syscall"
	"time"

	"golang.org/x/crypto/ssh/terminal"
)

type Logs struct {
	Login    string
	Password string

	Browser         int // 0 = FireFox || 1 = Chrome
	BrowserAcc      int
	VisableBokmarks int

	WriteGitConfigs int
	GitUserEmail    string
	GitUserName     string

	TurnOnWifiHotspot int
	WifiSSID          string
	WifiPasswd        string

	AlemEmail  string
	AlemPasswd string

	CreateNewSSHforGITEA int

	NumLockOff int

	AddRussianKeyboard int

	SetPKPasswd int
	PasswdOfPK  string

	BlockWith_PauseBreak_Buttom int

	CastomImageForBlockScreen     int
	CastomImageForBlockScreenPath string

	GitCloneYourWorkingRepoFromGITEA int
	GITEA_RepoName                   string
	OpenTheRepoInVSCode              int

	ScreenLockAfterEndScript int
}

var User Logs

func init() {
	User.login = "ynurmakh"
	User.password = "123456"
}

func main() {
	CtrlCExit()
	ClearTheTerminal()

	fmt.Println("\n" + "FastReg_By_p0n41k" + "\n" + "GitHub: https://github.com/p0n41k\n")
	fmt.Println("Enter the password for " + strings.ToUpper(User.login) + ": ")

	for i := 0; i < 3; i++ {
		pass, err := CheckPass()
		if err != nil {
			fmt.Println(err)
			return
		}
		if pass {
			time.Sleep(500 * time.Millisecond)
			TheReg()
			return
		} else {
			time.Sleep(1 * time.Second)
			fmt.Println("Wrong password, try again", strconv.Itoa(i+1)+"/3")
		}
	}
	Samounjtojenie()
}

func CtrlCExit() {
	initialState, err := terminal.GetState(int(os.Stdin.Fd()))
	if err != nil {
		fmt.Println("Ошибка при получении состояния терминала:", err)
		return
	}

	// Обработчик сигнала прерывания (Ctrl + C)
	c := make(chan os.Signal, 1)
	signal.Notify(c, os.Interrupt, syscall.SIGTERM)

	go func() {
		<-c
		// Восстанавливаем состояние терминала перед выходом
		terminal.Restore(int(os.Stdin.Fd()), initialState)
		os.Exit(0)
	}()
}

func ClearTheTerminal() {
	cmd := exec.Command("clear")
	cmd.Stdout = os.Stdout
	cmd.Run()
}

func CheckPass() (bool, error) {
	password, err := terminal.ReadPassword(int(os.Stdin.Fd()))
	if err != nil {
		return false, err
	}

	passwordStr := string(password)

	if passwordStr == User.password {
		return true, nil
	} else {
		return false, nil
	}
}

func TheReg() {
	fmt.Println("Start the Script")
}

func Samounjtojenie() {
	fmt.Println("Samounjtojenie")
}
