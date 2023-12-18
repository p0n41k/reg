#!/bin/bash


shLogin="ynurmakh" # Твой логин GTEA\Dashboard Пример ynurmakh
shPassword="4025654080512" # Твой пароль от будущего скрипта, для запуск скрипта будет требоваться этот код 

shBrowser="0" # Выберите свой браузер    (0 = Firefox Web Browser / 1 = Google Chrome)
shBrowserAcc="1" # Нужно ли заходить в аккаунт браузера    (0 = нет / 1 = да)
sh="nur_erbol_2002@mail.ru" # Email от твоего Mozilla account / Google Accaunt
sh="324625Dom" # Пароль от твоего Mozilla account / Google Accaunt

shVisableBokmarks="1" # Сделать видемым закладки, полезно если пользуеться избранными вкладками

shWriteGitConfigs="1" # Прописать git configs. Помогает не прписывать "git config --global user..." каждый раз    (0 = нет / 1 = да).
shGitUserEmail="nur_erbol_2002@mail.ru" #  Твой логин для  git cinfig --global user.email
shGitUserName="ynurmakh" # Твой логин для  git cinfig --global user.name

shTurnOnWifiHotspot="1" # Включить режим модема из компьтера (работает быстрее чем alem guest)  (0 = нет / 1 = да)
shWifiSSID="@lem" # Название твоей сети Wi-Fi
shWifiPasswd="080512@lem" # Пароль от твоей сети Wi-Fi

shAlemEmail="nur_erbol_2002@mail.ru" # Твой email для Alem01
shAlemPasswd="324625Dom@" # Твой пароль для Alem01

shCreateNewSSHforGITEA="1" # Создать новый SSH и привязать его (0 = нет / 1 = да)

shNumLockOff="1" # Выключить NumLock (0 = нет / 1 = да)

shAddRussianKeyboard="1" # Добавить русскую раскладку клавиатуры (0 = нет / 1 = да)

shSetPKPasswd="1" # Установить пароль от для компьтера? (0 = нет / 1 = да)
shPasswdOfPK="-+-+" # Какой пароль будет стоять (желательно только цифры, так как если пароль на EN а при блокировке у вас стоял RU расскладка клавиатуры то дальнейшая разюлокировка компьютера будет затруднена)
shBlockWith_PauseBreak_Buttom="1" # Блокировать компьтер через кнопку Pause Break (кнопка над стрелочками)
shCastomImageForBlockScreen="1" # Изменять ли карнику заблокированного экрана (0 = нет / 1 = да)
shCastomImageForBlockScreenPath="path" # Путь до картинки (Чтоб картинка васстанавливалась автоматически рекомендуеться запушить картинку в свой GitHub рядом с самой репозиторией)

shGitCloneYourWorkingRepoFromGITEA="1" # Клонировать ли ваш рабочий проект из GTEA (0 = нет / 1 = да)
shGITEA_RepoName="link" # Сылка до вашей репы
shOpenTheRepoInVSCode="1" #  Открыть ли вашу репу в VSCode 

shScreenLockAfterEndScript="1" # Заблокировать компьютер после завершения скрипта регистраций


forpaste="\ \ \ \ User.Login = \"$shLogin\"\n\ \ \ \ User.Password = \"$shPassword\"\n\n\ \ \ \ User.Browser = $shBrowser\n\n\ \ \ \ User.BrowserAcc = $shBrowserAcc\n\n\ \ \ \ User.VisableBokmarks = $shVisableBokmarks\n\n\ \ \ \ User.WriteGitConfigs = $shWriteGitConfigs\n\ \ \ \ User.GitUserEmail = \"$shGitUserEmail\"\n\ \ \ \ User.GitUserName = \"$shGitUserName\"\n\n\ \ \ \ User.TurnOnWifiHotspot = $shTurnOnWifiHotspot\n\ \ \ \ User.WifiSSID = \"$shWifiSSID\"\n\ \ \ \ User.WifiPasswd = \"$shWifiPasswd\"\n\n\ \ \ \ User.AlemEmail = \"$shAlemEmail\"\n\ \ \ \ User.AlemPasswd = \"$shAlemPasswd\"\n\n\ \ \ \ User.CreateNewSSHforGITEA = $shCreateNewSSHforGITEA\n\n\ \ \ \ User.NumLockOff = $shNumLockOff\n\n\ \ \ \ User.AddRussianKeyboard = $shAddRussianKeyboard\n\n\ \ \ \ User.SetPKPasswd = $shSetPKPasswd\n\ \ \ \ User.PasswdOfPK = \"$shPasswdOfPK\"\n\ \ \ \ User.BlockWith_PauseBreak_Buttom = $shBlockWith_PauseBreak_Buttom\n\n\ \ \ \ User.CastomImageForBlockScreen = $shCastomImageForBlockScreen\n\ \ \ \ User.CastomImageForBlockScreenPath = \"$shCastomImageForBlockScreenPath\"\n\n\ \ \ \ User.GitCloneYourWorkingRepoFromGITEA = $shGitCloneYourWorkingRepoFromGITEA\n\ \ \ \ User.GITEA_RepoName = \"$shGITEA_RepoName\"\n\ \ \ \ User.OpenTheRepoInVSCode = $shOpenTheRepoInVSCode\n\n\ \ \ \ User.ScreenLockAfterEndScript = $shScreenLockAfterEndScript"


sed -i "59i$forpaste" reg.go