; Shortcuts like mac
; Written by Bob
; https://github.com/m2nlight/AHKShortcutLikeMac

#SingleInstance force
#MaxHotkeysPerInterval 2000
; ## Special Key ##
#F1::Send #x    ; Show WinX menu in win10
#F2::Send #r    ; Show run dialog

; ## Menu ##
#H::WinMinimize, A
+#H::HideOtherWindow()
#Q::Send !{F4}
; File
#T::Send ^t
+#T::Send +^t
#N::Send ^n
+#N::Send +^n
#O::Send ^o
#W::Send ^w
#+W::Send #w
#S::Send ^s
#P::Send ^p
#+P::Send #p
; Edit
#Z::Send ^z
+#Z::Send ^y
#X::Send ^x
#C::Send ^c
#V::Send ^v
!+#V::
  clipboard = %clipboard%
  Send ^v
return
#A::Send ^a
#F::Send ^f
#G::Send {F3}
+#G::Send +{F3}
!#F::Send ^h
#Left::Send {Home}
#Right::Send {End}
#Up::Send {PgUp}
#Down::Send {PgDn}
LAlt & Left::Send ^{Left}
LAlt & Right::Send ^{Right}
#+Left::Send +{Home}
#+Right::Send +{End}
#+Up::Send +{PgUp}
#+Down::Send +{PgDn}
!+Left::Send +^{Left}
!+Right::Send +^{Right}
; View
^#F::Send {F11}
#=::Send ^{WheelUp}
#-::Send ^{WheelDown}
#0::Send ^0
#R::Send {F5}
; Finder
#Backspace::Send {Del}
+#3::Send {PrintScreen}
+^#3::Send {PrintScreen}
+#4::Send !{PrintScreen}
+^#4::Send !{PrintScreen}
#F3::Send #d
#I::Send !{Enter}
#F10::Send {Volume_Mute}
#F11::Send {Volume_Down}
#F12::Send {Volume_Up}
#+Backspace::EmptyBin()
#+!Backspace::EmptyBin(true)
; Explorer
#If ActiveControlIsOfClass("SysListView32")
#O::Send {Enter}
#Up::Send !{Up}
#Down::Send {Enter}
#Enter::Send {F2}
;NumpadEnter::Send {F2}
#If

#IfWinActive ahk_class CabinetWClass
#If ActiveControlIsOfClass("DirectUIHWND")
#O::Send {Enter}
#Up::Send !{Up}
#Down::Send {Enter}
#Enter::Send {F2}
;NumpadEnter::Send {F2}
#If
#IfWinActive

; ## custom ##
CapsLock & 8::
  length = 12
  if GetKeyState("Shift") {
    GeneratePassword(length, true)
    return
  }
  GeneratePassword(length)
Return
CapsLock & Left::Send #{Left}    ; WIN+LEFT
CapsLock & Down::Send #{Down}    ; WIN+DOWN
CapsLock & Up::Send #{Up}        ; WIN+UP
CapsLock & Right::Send #{Right}  ; WIN+RIGHT
; capslock + key
CapsLock & Space::SendInput {Space 4}    ; Input 4 space
CapsLock & H::
  if GetKeyState("Shift") {
    Send +{Left}     ; Add Selection
    return
  }
  Send {Left}        ; Move left (VIM: h)
Return
CapsLock & J::
  if GetKeyState("Shift") {
    Send +{Down}     ; Add Selection
    return
  }
  Send {Down}        ; Move down (VIM: j)
Return
CapsLock & K::
  if GetKeyState("Shift") {
    Send +{Up}     ; Add Selection
    return
  }
  Send {Up}          ; Move up (VIM: k)
Return
CapsLock & L::
  if GetKeyState("Shift") {
    Send +{Right}     ; Add Selection
    return
  }
  Send {Right}       ; Move right (VIM: l)
Return
CapsLock & N::
  if GetKeyState("Shift") {
    Send +{Down}     ; Add Selection
    return
  }
  Send {Down}        ; Move down too (VIM: CTRL+N)
Return
CapsLock & P::
  if GetKeyState("Shift") {
    Send +{Up}     ; Add Selection
    return
  }
  Send {Up}          ; Move up too (VIM: CTRL+P)
Return
CapsLock & B::
  if GetKeyState("Shift") {
    Send +{PgUp}     ; Add Selection
    return
  }
  Send {PgUp}        ; previous page. (VIM: CTRL+B)
Return
CapsLock & F::
  if GetKeyState("Shift") {
    Send +{PgDn}     ; Add Selection
    return
  }
  Send {PgDn}        ; next page. (VIM: CTRL+F)
Return
CapsLock & G::
  if GetKeyState("Shift") {
    Send ^{End}    ; Goto page head. (VIM: SHIFT+G)
    return
  }
  Send ^{Home}     ; Goto page foot. (VIM: gg)
Return
CapsLock & 4::
  if GetKeyState("Shift") {
    Send +{End}     ; Add Selection
    return
  }
  Send {End}         ; Move to line end (VIM: SHIFT+$)
Return
CapsLock & 6::
  if GetKeyState("Shift") {
    Send +{Home}     ; Add Selection
    return
  }
  Send {Home}        ; Move to line begin (VIM: SHIFT+^)
Return
CapsLock & Enter::Send {End}{Enter}        ; Start new line
CapsLock & \::Send {Home}{Enter}{Up}       ; Start new line at previous line
CapsLock & RShift::Send {Enter}{Left}      ; Line split
CapsLock & Backspace::Send +{Home}{Backspace}    ; Delete to line begin
CapsLock & Delete::Send +{End}{Backspace}        ; Delete to line end
CapsLock & D::Send {Home}+{End}^c{End}{Enter}^v{Home 2}       ; Duplicate line
CapsLock & A::Send {Home}+{End}      ; Selected current line
CapsLock & C::Send {End}+{Home}^c    ; Selected and Copy current line
CapsLock & X::Send {End}+{Home 2}^x{Delete}         ; Cut current line
CapsLock & V::Send {Home}{Enter}{Up}^v            ; Paste to current line
CapsLock & Insert::                               ; Paste plain text
  clipboard = %clipboard%
  Send ^v
Return
; left alt + key
LAlt & V::Send ^v{Enter}          ; paste and go
LAlt & C::Send +{End}^c           ; copy to line end
LAlt & X::Send +{End}^x           ; cut to line end
; function key
CapsLock & F1::
  if GetKeyState("Shift") {
    ListHotkeys    ; Show ListHotKeys window.
    return
  }
  title=MacHotkey Help
  msg=CapsLock+F1  Show this.`t+Shift  Show ListHotKeys window.`nCapsLock+F2  Current window always on top.`t+Shift  turn off.`nCapsLock+F3  Run Listary.`nCapsLock+F4  Run Everything.`t`t+Shift  as administrator.`n`nCapsLock+F5  Run pageant.`nCapsLock+F6  Run puttygen.`nCapsLock+F7  Run psftp.`t`t+Shift  as administrator.`nCapsLock+F8  Run putty.`n`nCapsLock+F9  Run Powershell.`t`t+Shift  as administrator.`nCapsLock+F10  Run CMD.`t`t+Shift  as administrator.`nCapsLock+F11  Run Git shell.`t`t+Shift  as administrator.`nCapsLock+F12  Run Bash shell(WSL)/MSYS2.`t+Shift  Run MSYS2.`n`nWin+F1  Show WinX menu.`nWin+F2  Show Run dialog.`nWin+F3  Show Desktop.`nWin+F10  Mute.`nWin+F11  Volume down.`nWin+F12  Volume up.`n`nHot strings`n]now`t]time`t]date`t]longdate`t
  MsgBox ,,%title%,%msg%,
Return
CapsLock & F2::
  if GetKeyState("Shift") {
    WinSet, AlwaysOnTop, Off, A
    return
  }
  WinSet, AlwaysOnTop, On, A
  ;WinSet, AlwaysOnTop, Toggle, A    ; bring current window to TopMost
Return
CapsLock & F3::Run "C:\Program Files\Listary\Listary.exe"    ; Run Listary
CapsLock & F4::
  if GetKeyState("Shift") and not A_IsAdmin {
    Run *RunAs "C:\Tools\Everything\Everything.exe"
    return
  }
  Run "C:\Tools\Everything\Everything.exe"    ; Run Everything
Return
CapsLock & F5::Run "pageant.exe"
CapsLock & F6::Run "puttygen.exe"
CapsLock & F7::
  if GetKeyState("Shift") and not A_IsAdmin {
    RunCmd("psftp.exe", true)
    return
  }
  RunCmd("psftp.exe")
Return
CapsLock & F8::Run "putty.exe"
CapsLock & F9::                 ; Run PowerShell
  if GetKeyState("Shift") and not A_IsAdmin {
    curPath := CurrentPath()
    Run *RunAs powershell.exe -NoExit "cd \"%curPath%\""
    return
  }
  curPath := CurrentPath()
  Run powershell.exe -NoExit "cd \"%curPath%\""
Return
CapsLock & F10::
  if GetKeyState("Shift") {
    RunCmd("ver", true)
    return
  }
  RunCmd("ver")    ; Run cmd
Return
CapsLock & F11::RunCmdAndClose("""C:\Program Files\Git\bin\sh.exe"" --login")    ; Run git sh
CapsLock & F12::
  if GetKeyState("Shift") {
    if FileExist("C:\msys64\usr\bin\mintty.exe")
    {
      RunMSYS2("C:\msys64\usr\bin\mintty.exe", "MINGW64", true)
    }
    else if FileExist("C:\msys32\usr\bin\mintty.exe")
    {
      RunMSYS2("C:\msys32\usr\bin\mintty.exe", "MINGW32", true)
    }
    else
    {
      MsgBox ,,AHK,Sorry`, mintty.exe don't exist.,3
    }
    return
  }
  
  if FileExist("C:\Windows\System32\bash.exe")
  {
    RunCmdAndClose("""C:\Windows\System32\bash.exe"" --login")    ; Run bash shell in win10 amd64
  }
  else if FileExist("C:\Windows\sysnative\bash.exe")
  {
    RunCmdAndClose("""C:\Windows\sysnative\bash.exe"" --login")    ; Run bash shell in win10 x86
  }
  else if FileExist("C:\msys64\usr\bin\mintty.exe")
  {
    RunMSYS2("C:\msys64\usr\bin\mintty.exe", "MINGW64")
  }
  else if FileExist("C:\msys32\usr\bin\mintty.exe")
  {
    RunMSYS2("C:\msys32\usr\bin\mintty.exe", "MINGW32")
  }
  else
  {
    MsgBox ,,AHK,Sorry`, base.exe or mintty.exe don't exist.,3
  }
Return

; ## Hotstrings ##
:*:]date::
  FormatTime, CurrentDateTime,, yyyy-M-d
  SendInput %CurrentDateTime%
return
:*:]time::
  FormatTime, CurrentDateTime,, HH:mm:ss
  SendInput %CurrentDateTime%
return
:*:]now::
  FormatTime, CurrentDateTime,, yyyy-M-d HH:mm:ss
  SendInput %CurrentDateTime%
return
:*:]longdate::
  FormatTime, CurrentDateTime,, LongDate
  SendInput %CurrentDateTime%
return

; ## Mouse ##
/*
WheelUP::
Send {WheelDown}
Return

WheelDown::
Send {WheelUp}
Return

WheelLeft::
Send {WheelRight}
Return

WheelRight::
Send {WheelLeft}
Return
*/

; ## functions ##
RunCmd(command, runAsAdmin=false)
{
  curPath := CurrentPath()
  if runAsAdmin && not A_IsAdmin {
	Run *RunAs %comspec% /K "cd /d "%curPath%" & %command%"
  } else {
    Run %comspec% /K "cd /d "%curPath%" & %command%"
  }
}

RunCmdAndClose(command)
{
  curPath := CurrentPath()
  Run %comspec% /C "cd /d "%curPath%" & %command%"
}

RunMSYS2(mintty, mingw, runAsAdmin=false)
{
  curPath := CurrentPath()
  if (SubStr(curPath, -1) == ":\") {
    curPath .= "\"  ; like C:\\
  }
  parameter = "-i /msys2.ico --dir `"%curPath%`" /bin/env MSYSTEM=%mingw% CHERE_INVOKING=1 /usr/bin/bash -l"
  if runAsAdmin && not A_IsAdmin {
    Run *RunAs "%mintty%" "%parameter%"
  } else {
    Run "%mintty%" "%parameter%"
  }
}

RunOrActivate(Program, isActivate=true, msg="")
{
  SplitPath, Program, ExeFile
  Process, Exist, %ExeFile%
  PID = %ErrorLevel%
  if (PID = 0) {
    Run, %Program%
  } else if (StrLen(msg) > 0) {
    MsgBox ,,AHK,%msg%,3
  }
  if (isActivate)
  {
    WinActivate, ahk_pid %PID%
  }
}

EmptyBin(isNoConfirm=false)
{
  ;SHERB_NOCONFIRMATION = 0x000001;
  ;SHERB_NOPROGRESSUI = 0x000002;
  ;SHERB_NOSOUND = 0x000004;
  dwFlags = 0x00
  if(isNoConfirm) {
    dwFlags = 0x01
  }
  DllCall("Shell32\SHEmptyRecycleBin", "Ptr", hwnd, "Ptr", NULL, "UInt", dwFlags)
}

HideOtherWindow()
{
  WinGetActiveTitle, curtitle
  Send #m
  Sleep,200
  WinRestore, %curtitle%
}

CurrentPath()
{
  url := GetCurrentExplorerURL(true)
  if (url)
    return ConvertExplorerURLToPath(url)
  return A_Desktop
}

GetCurrentExplorerURL(getLastWhenNoFound=false)
{
  WinGet, curhwnd, ID, A
  for pExp in ComObjCreate("Shell.Application").Windows
  {
    try
    {
      if (pExp.FullName = "C:\WINDOWS\EXPLORER.EXE") {
        if (pExp.hwnd = curhwnd) {
          return pExp.LocationURL
        }
        if(StrLen(pExp.LocationURL)> 0) {
          last := pExp.LocationURL
        }
      }
    }
  }
  if(getLastWhenNoFound and last) {
    return last
  }
}

ConvertExplorerURLToPath(url)
{
  If !url
    Return ""
  path := url
  path := RegExReplace(path, "ftp://.*@","ftp://")
  StringReplace, path, path, file:///
  StringReplace, path, path, /, \, All
  Loop
    If RegExMatch(path, "i)(?<=%)[\da-f]{1,2}", hex)
      StringReplace, path, path, `%%hex%, % Chr("0x" . hex), All
    Else Break
  Return path 
}

ActiveControlIs(Control) {  
    ControlGetFocus, FocusedControl, A  
    return (FocusedControl=Control)  
}  

ActiveControlIsOfClass(Class) {  
    ControlGetFocus, FocusedControl, A  
    ControlGet, FocusedControlHwnd, Hwnd,, %FocusedControl%, A  
    WinGetClass, FocusedControlClass, ahk_id %FocusedControlHwnd%  
    return (FocusedControlClass=Class)  
}

GeneratePassword(length, withSpecialChars=false) {
  Characters = abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890
  if withSpecialChars {
    Characters .= "``~!@#$`%^&*()_+-=[]{}\|`;:'""`,.<>/?"
  }
  Loop %length% {
    Random, r, 1, % StrLen(Characters)
    Passwords .= SubStr(Characters, r, 1)
  }
  SendInput {Raw}%Passwords%
}
