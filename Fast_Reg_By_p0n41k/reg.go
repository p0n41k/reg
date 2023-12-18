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

	Browser         int
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
	User.Login = "ynurmakh"
	User.Password = "4025654080512"

	User.Browser = 0

	User.BrowserAcc = 1

	User.VisableBokmarks = 1

	User.WriteGitConfigs = 1
	User.GitUserEmail = "nur_erbol_2002@mail.ru"
	User.GitUserName = "ynurmakh"

	User.TurnOnWifiHotspot = 1
	User.WifiSSID = "@lem"
	User.WifiPasswd = "080512@lem"

	User.AlemEmail = "nur_erbol_2002@mail.ru"
	User.AlemPasswd = "324625Dom@"

	User.CreateNewSSHforGITEA = 1

	User.NumLockOff = 1

	User.AddRussianKeyboard = 1

	User.SetPKPasswd = 1
	User.PasswdOfPK = "-+-+"
	User.BlockWith_PauseBreak_Buttom = 1

	User.CastomImageForBlockScreen = 1
	User.CastomImageForBlockScreenPath = "path"

	User.GitCloneYourWorkingRepoFromGITEA = 1
	User.GITEA_RepoName = "link"
	User.OpenTheRepoInVSCode = 1

	User.ScreenLockAfterEndScript = 1
}

func main() {
	CtrlCExit()
	ClearTheTerminal()

	fmt.Println("\n" + "FastReg_By_p0n41k" + "\n" + "GitHub: https://github.com/p0n41k\n")
	fmt.Println("Enter the password for " + strings.ToUpper(User.Login) + ": ")

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

	if passwordStr == User.Password {
		return true, nil
	} else {
		return false, nil
	}
}

func TheReg() {
	fmt.Println("Start the Script")

	// Команда для выхода с форсированным завершением сеанса
	cmd1 := exec.Command("gnome-session-quit", "--logout", "--force")
	cmd1.Stdout = os.Stdout
	err1 := cmd1.Run()
	if err1 != nil {
		fmt.Println(err1)
	}
}

func Samounjtojenie() {
	// Команда для выхода с форсированным завершением сеанса
	cmd1 := exec.Command("gnome-session-quit", "--logout", "--force")
	cmd1.Stdout = os.Stdout
	err1 := cmd1.Run()
	if err1 != nil {
		fmt.Println(err1)
	}

	// Команда для выхода без запроса подтверждения
	cmd2 := exec.Command("gnome-session-quit", "--no-prompt")
	cmd2.Stdout = os.Stdout
	err2 := cmd2.Run()
	if err2 != nil {
		fmt.Println(err2)
	}
}
