; Shortcuts like mac
; Written by Bob
; https://github.com/m2nlight/AHKShortcutLikeMac

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
#S::Send ^s
#P::Send ^p
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
!Left::Send ^{Left}
!Right::Send ^{Right}
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
CapsLock & Left::Send #{Left}    ; WIN+LEFT
CapsLock & Down::Send #{Down}    ; WIN+DOWN
CapsLock & Up::Send #{Up}        ; WIN+UP
CapsLock & Right::Send #{Right}  ; WIN+RIGHT
; capslock + key
CapsLock & Space::SendInput {Space 4}    ; Input 4 space
CapsLock & H::Send {Left}        ; Move left (VIM: h)
CapsLock & J::Send {Down}        ; Move down (VIM: j)
CapsLock & K::Send {Up}          ; Move up (VIM: k)
CapsLock & L::Send {Right}       ; Move right (VIM: l)
CapsLock & N::Send {Down}        ; Move down too (VIM: CTRL+N)
CapsLock & P::Send {Up}          ; Move up too (VIM: CTRL+P)
CapsLock & 4::Send {End}         ; Move to line end (VIM: SHIFT+$)
CapsLock & 6::Send {Home}        ; Move to line begin (VIM: SHIFT+^)
CapsLock & Enter::Send {End}{Enter}        ; Start new line
CapsLock & \::Send {Home}{Enter}{Up}       ; Start new line at previous line
CapsLock & RShift::Send {Enter}{Left}      ; Line split
CapsLock & Backspace::Send +{Home}{Backspace}    ; Delete to line begin
CapsLock & Delete::Send +{End}{Backspace}        ; Delete to line end
CapsLock & D::Send {Home}+{End}^c{End}{Enter}^v{Home}       ; Duplicate line
CapsLock & A::Send {Home}+{End}      ; Selected current line
CapsLock & C::Send {End}+{Home}^c    ; Selected and Copy current line
CapsLock & X::Send {End}+{Home}^x{Delete}         ; Cut current line
CapsLock & V::Send {Home}{Enter}{Up}^v            ; Paste to current line
CapsLock & Insert::                               ; Paste plain text
  clipboard = %clipboard%
  Send ^v
return
; left alt + key
LAlt & V::Send ^v{Enter}          ; paste and go
LAlt & C::Send +{End}^c           ; copy to line end
LAlt & X::Send +{End}^x           ; cut to line end
; function key
CapsLock & F1::
  title=CapsLock + {Fn}
  msg=CapsLock + {Fn}: `n`nF1 - Show this.`nF2 - Toogle always on top.`nF3 - `nF4 - Run Lingoes.`n`nF5 - `nF6 - `nF7 - Run Listary.`nF8 - Run Everything.`n`nF9 - Run Powershell.`nF10 - Run CMD.`nF11 - Run Git shell.`nF12 - Run Bash shell(WSL).`n`nWin+F1 - Show WinX menu.`nWin+F2 - Show Run dialog.
  MsgBox ,,%title%,%msg%,
return
CapsLock & F2::WinSet, AlwaysOnTop, Toggle, A    ; bring current window to TopMost
CapsLock & F4::Run "C:\Program Files\Lingoes\Translator2\Lingoes64.exe"    ; Run Lingoes64
CapsLock & F7::Run "C:\Program Files\Listary\Listary.exe"    ; Run Listary
CapsLock & F8::Run "C:\Tools\Everything\Everything.exe"    ; Run Everything
CapsLock & F9::                 ; Run PowerShell
  curPath := CurrentPath()
  Run powershell.exe -NoExit "cd \"%curPath%\""
return
CapsLock & F10::RunCmd("ver")    ; Run cmd
CapsLock & F11::RunCmdAndClose("""C:\Program Files\Git\bin\sh.exe"" --login")    ; Run git sh
;CapsLock & F12::RunCmd("C:\msys64\msys2_shell.bat")    ; Run msys2 shell
;CapsLock & F12::ListHotkeys    ; Show ListHotKeys window.
CapsLock & F12::RunCmdAndClose("""C:\Windows\System32\bash.exe"" --login")    ; Run bash shell

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

; ## functions ##
RunCmd(command)
{
  curPath := CurrentPath()
  Run %comspec% /K "cd /d "%curPath%" & %command%"
}

RunCmdAndClose(command)
{
  curPath := CurrentPath()
  Run %comspec% /C "cd /d "%curPath%" & %command%"
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
    if (pExp.FullName = "C:\WINDOWS\EXPLORER.EXE") {
      if (pExp.hwnd = curhwnd) {
        return pExp.LocationURL
      }
      if(StrLen(pExp.LocationURL)> 0) {
        last := pExp.LocationURL
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