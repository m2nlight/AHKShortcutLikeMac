; Shortcuts like mac
; Written by Bob
; http://bob-wei.cnblogs.com
; Win+F1 to show HotkeyList

; Menu
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
;View
^#F::Send {F11}
#=::Send ^{WheelUp}
#-::Send ^{WheelDown}
#0::Send ^0
;Special shortkey for Windows
F1::WinSet, AlwaysOnTop, Toggle, A
#F1::ListHotkeys
#LAlt::Send #x
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

; software
#8::RunOrActivate("cmd.exe")
#9::RunOrActivate("D:\Bob\tools\CCleaner\CCleaner.exe")
!Space::
    RunOrActivate("D:\Bob\tools\ListaryPortable\Listary.exe", false)
    Send {LCtrl}{LCtrl}
Return
!#Space::
    RunOrActivate("D:\Bob\tools\Everything\Everything.exe", false)
    Send #\
Return

; functions
RunOrActivate(Program, isActivate=true)
{
  SplitPath, Program, ExeFile
  Process, Exist, %ExeFile%
  PID = %ErrorLevel%
  if (PID = 0) {
    Run, %Program%
  }
  if (isActivate)
  {
    WinActivate, ahk_pid %PID%
  }
}

EmptyBin(isSlient=false)
{
  ;SHERB_NOCONFIRMATION = 0x000001;
  ;SHERB_NOPROGRESSUI = 0x000002;
  ;SHERB_NOSOUND = 0x000004;
  dwFlags = 0x00
  if(isSlient) {
    dwFlags = 0x07
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


