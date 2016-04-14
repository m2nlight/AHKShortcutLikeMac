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
#LAlt::Send #x
PgUp::Send {Volume_Up}
PgDn::Send {Volume_Down}
ScrollLock::Send {Volume_Mute}
; capslock+key
CapsLock & Enter::Send {End}{Enter}
CapsLock & RShift::Send {Home}{Enter}
CapsLock & Space::SendInput {space}{space}{space}{space}
CapsLock & Backspace::Send +{Home}{Backspace}
CapsLock & Delete::Send +{End}{Backspace}
CapsLock & 4::Send {End}     ; VIM: SHIFT+$
CapsLock & 6::Send {Home}    ; VIM: SHIFT+^
CapsLock & G::Send ^{End}    ; VIM: SHIFT+G
CapsLock & T::Send ^{Home}   ; VIM: gg
CapsLock & H::Send {Left}    ; VIM: h
CapsLock & J::Send {Down}    ; VIM: j
CapsLock & K::Send {Up}      ; VIM: k
CapsLock & L::Send {Right}   ; VIM: l
CapsLock & N::Send {Down}    ; VIM: CTRL+N
CapsLock & P::Send {Up}      ; VIM: CTRL+P
; normal key
CapsLock & PgUp::Send {PgUp}
CapsLock & PgDn::Send {PgDn}
CapsLock & ScrollLock::Send {ScrollLock}
; function key
CapsLock & F1::WinSet, AlwaysOnTop, Toggle, A
CapsLock & F7::RunOrActivate("C:\MinGW\t\CCleaner\CCleaner.exe")
CapsLock & F8::RunOrActivate("C:\MinGW\t\Everything\Everything.exe",,"The Everything is running. `n`nPress Win+`` to Show it.")
CapsLock & F9::RunOrActivate("bash.exe")
CapsLock & F10::RunOrActivate("cmd.exe")
LAlt & Space::
  RunOrActivate("C:\MinGW\t\ListaryPortable\Listary.exe", false)
  Send {LCtrl}{LCtrl}
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

; ## functions ##
RunOrActivate(Program, isActivate=true, msg="")
{
  SplitPath, Program, ExeFile
  Process, Exist, %ExeFile%
  PID = %ErrorLevel%
  if (PID = 0) {
    Run, %Program%
  } else if (StrLen(msg)>0) {
    MsgBox ,0,AHK,%msg%,3
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