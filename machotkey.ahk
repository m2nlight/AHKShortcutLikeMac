; Shortcuts like mac
; Written by Bob
; http://www.cnblogs.com/Bob-wei/p/5316158.html

; Win+F1 to show HotkeyList
#F1::ListHotkeys

; ## Menu ##
#H::WinMinimize, A
+#H::HideOtherWindow()
#Q::Send !{F4}
; File
#T::Send ^t
+#T::Send +^t
#N::Send ^n
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
#IfWinActive ahk_class CabinetWClass
#O::Send {Enter}
#Up::Send !{Up}
#Down::Send {Enter}
#IfWinActive

; ## custom ##
; special key
AppsKey::Send #x                  ; Show WinX menu in win10
PgUp::Send {Volume_Up}            ; Volume Up
PgDn::Send {Volume_Down}          ; Volume Down
ScrollLock::Send {Volume_Mute}    ; Volume Mute
; normal key
CapsLock & PgUp::Send {PgUp}    ; PageDown
CapsLock & PgDn::Send {PgDn}    ; PageUp
CapsLock & ScrollLock::Send {ScrollLock}    ; ScrollLock
; capslock + key
CapsLock & Space::SendInput {space}{space}{space}{space}    ; Input 4 space
CapsLock & Left::Send +{Left}    ; same to SHIFT+LEFT
CapsLock & Down::Send +{Down}    ; same to SHIFT+DOWN
CapsLock & Up::Send +{Up}        ; same to SHIFT+UP
CapsLock & Right::Send +{Right}  ; same to SHIFT+RIGHT
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
LAlt & Space::    ; Run Listary or show/hide listary inputbox. Please use Listary v5.00 and Double-Ctrl hotkey is enabled.
  RunOrActivate("C:\MinGW\t\ListaryPortable\Listary.exe", false)
  Send {LCtrl}{LCtrl}
Return
; function key
CapsLock & F1::WinSet, AlwaysOnTop, Toggle, A    ; bring current window to TopMost
CapsLock & F7::RunOrActivate("C:\MinGW\t\CCleaner\CCleaner.exe")    ; run cclearner.exe
CapsLock & F8::    ; Run Everything. Please change "Toggle window Hotkey" to Win+` in Everything Options
  RunOrActivate("C:\MinGW\t\Everything\Everything.exe",,"The Everything is running. `n`nPress Win+`` to Show it.")
return
CapsLock & F9::RunOrActivate("bash.exe")    ; Run bash for win10 build 14316
CapsLock & F10::RunOrActivate("cmd.exe")    ; Run cmd

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

; ## functions ##
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