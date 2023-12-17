#!/bin/bash


shLogin="ynurmakh" # Твой логин GTEA Пример ynurmakh
shPassword="4025654080512" #

shBrowser="0" # 
shBrowserAcc="1" # 
sh="nur_erbol_2002@mail.ru" # 
sh="324625Dom" # 

shVisableBokmarks="1" # 

shWriteGitConfigs="1" # 
shGitUserEmail="nur_erbol_2002@mail.ru" # 
shGitUserName="ynurmakh" # 

shTurnOnWifiHotspot="1" # 
shWifiSSID="@lem" # 
shWifiPasswd="080512@lem" # 

shAlemEmail="nur_erbol_2002@mail.ru" # 
shAlemPasswd="324625Dom@" # 

shCreateNewSSHforGITEA="1" # 

shNumLockOff="1" # 

shAddRussianKeyboard="1" # 

shSetPKPasswd="1" # 
shPasswdOfPK="-+-+" # 
shBlockWith_PauseBreak_Buttom="1" # 
shCastomImageForBlockScreen="1" # 
shCastomImageForBlockScreenPath="path" # 

shGitCloneYourWorkingRepoFromGITEA="1" # 
shGITEA_RepoName="link" # 
shOpenTheRepoInVSCode="1" # 

shScreenLockAfterEndScript="1" # 


forpaste="\ \ \ \ User.Login = \"$shLogin\"\n\ \ \ \ User.Password = \"$shPassword\"\n\n\ \ \ \ User.Browser = $shBrowser\n\n\ \ \ \ User.BrowserAcc = $shBrowserAcc\n\n\ \ \ \ User.VisableBokmarks = $shVisableBokmarks\n\n\ \ \ \ User.WriteGitConfigs = $shWriteGitConfigs\n\ \ \ \ User.GitUserEmail = \"$shGitUserEmail\"\n\ \ \ \ User.GitUserName = \"$shGitUserName\"\n\n\ \ \ \ User.TurnOnWifiHotspot = $shTurnOnWifiHotspot\n\ \ \ \ User.WifiSSID = \"$shWifiSSID\"\n\ \ \ \ User.WifiPasswd = \"$shWifiPasswd\"\n\n\ \ \ \ User.AlemEmail = \"$shAlemEmail\"\n\ \ \ \ User.AlemPasswd = \"$shAlemPasswd\"\n\n\ \ \ \ User.CreateNewSSHforGITEA = $shCreateNewSSHforGITEA\n\n\ \ \ \ User.NumLockOff = $shNumLockOff\n\n\ \ \ \ User.AddRussianKeyboard = $shAddRussianKeyboard\n\n\ \ \ \ User.SetPKPasswd = $shSetPKPasswd\n\ \ \ \ User.PasswdOfPK = \"$shPasswdOfPK\"\n\ \ \ \ User.BlockWith_PauseBreak_Buttom = $shBlockWith_PauseBreak_Buttom\n\n\ \ \ \ User.CastomImageForBlockScreen = $shCastomImageForBlockScreen\n\ \ \ \ User.CastomImageForBlockScreenPath = \"$shCastomImageForBlockScreenPath\"\n\n\ \ \ \ User.GitCloneYourWorkingRepoFromGITEA = $shGitCloneYourWorkingRepoFromGITEA\n\ \ \ \ User.GITEA_RepoName = \"$shGITEA_RepoName\"\n\ \ \ \ User.OpenTheRepoInVSCode = $shOpenTheRepoInVSCode\n\n\ \ \ \ User.ScreenLockAfterEndScript = $shScreenLockAfterEndScript"


sed -i "59i$forpaste" reg.go