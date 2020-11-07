; Shortcuts like mac
; Written by m2nlight
; https://github.com/m2nlight/AHKShortcutLikeMac

#SingleInstance Off
#HotkeyInterval 2000
#HotkeyModifierTimeout 100
SetWorkingDir, %A_ScriptDir%

global my_name := "MacHotKey"
global my_version := "v0.3.0"
global my_bit := A_PtrSize * 8
global my_website := "https://github.com/m2nlight/AHKShortcutLikeMac"

if A_Args.Length() > 0 {
  #NoEnv
  #Persistent
  try {
    cmd := A_Args[1]
    if (cmd = "movefiles") {
      ShellMoveFile()
    } else if (cmd = "emptybin") {
      EmptyBin()
    } else if (cmd = "silentemptybin") {
      EmptyBin(true)
    } else if (cmd = "SwitchHiddenFiles") {
      SwitchHiddenFiles()
      Send {F5}
    } else if (cmd = "help" or cmd = "version") {
      ShowHelp()
    } else {
      ExitApp, 1
    }
  }
  ExitApp
}

; ## Special Key ##
#F1::Send #x ; Show WinX menu in win10
#F2::Send #r ; Show run dialog
#`::NextWindow()

; ## Menu ##
#H::WinMinimize, A
!#H::HideOtherWindow()
#M::WinMinimize, A
!#M::WinMinimizeAll
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
<!Left::Send ^{Left}
<!Right::Send ^{Right}
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
+#4::Send +#s
+#5::
  try {
    Run, "C:\Windows\System32\SnippingTool.exe"
  }
Return
#F3::Send #d
#F10::Send {Volume_Mute}
#F11::Send {Volume_Down}
#F12::Send {Volume_Up}
#+Backspace::RunNewInstance("emptybin")
#+!Backspace::RunNewInstance("silentemptybin")
#!Escape::
  try {
    Run, "C:\Windows\System32\Taskmgr.exe"
  }
Return
#+!Escape::KillProcess()
#+!^Escape::KillProcess(true)
; Explorer
#IfWinActive ahk_exe Explorer.EXE
!#V::
  if CheckMoveFile() {
    RunNewInstance("movefiles")
  }
Return
#+.::RunNewInstance("SwitchHiddenFiles", true)
#If ActiveControlIsOfClass("SysListView32") or ActiveControlIsOfClass("DirectUIHWND")
  #Backspace::Send {Del}
#I::Send !{Enter}
#O::Send {Enter}
#Up::Send !{Up}
#Down::Send {Enter}
#Enter::Send {F2}
#If
#IfWinActive

; ## custom ##
; left alt + key
<!V::Send ^v{Enter} ; paste and go
<!C::Send +{End}^c ; copy to line end
<!X::Send +{End}^x ; cut to line end

; CapsLock + key
CapsLock & Escape::
  Run %my_website%
Return
CapsLock & `::SetTransparent(0)
CapsLock & 1::SetTransparent(10)
CapsLock & 2::SetTransparent(20)
CapsLock & 3::SetTransparent(30)
CapsLock & 4::SetTransparent(40)
CapsLock & 5::SetTransparent(50)
CapsLock & 6::SetTransparent(60)
CapsLock & 7::SetTransparent(70)
CapsLock & 8::
  if GetKeyState("Alt") {
    GeneratePassword(20)
    return
  }
  if GetKeyState("Shift") {
    GeneratePassword(20, true)
    return
  }
  SetTransparent(80)
Return
CapsLock & 9::SetTransparent(90)
CapsLock & 0::SetTransparent(100)

CapsLock & Left::Send #{Left} ; WIN+LEFT
CapsLock & Down::Send #{Down} ; WIN+DOWN
CapsLock & Up::Send #{Up} ; WIN+UP
CapsLock & Right::Send #{Right} ; WIN+RIGHT
; capslock + key
CapsLock & Space::Send ^{Space}
CapsLock & B::
  if GetKeyState("Shift") {
    Send +{Left}
    return
  }
  Send {Left} ; Move back (Emacs: CTRL+B)
Return
CapsLock & F::
  if GetKeyState("Shift") {
    Send +{Right}
    return
  }
  Send {Right} ; Move front (Emacs: CTRL+F)
Return
CapsLock & N::
  if GetKeyState("Shift") {
    Send +{Down}
    return
  }
  Send {Down} ; Move next (Emacs: CTRL+N)
Return
CapsLock & P::
  if GetKeyState("Shift") {
    Send +{Up}
    return
  }
  Send {Up} ; Move previous (Emacs: CTRL+P)
Return
CapsLock & A::
  if GetKeyState("Shift") {
    Send +{Home}
    return
  }
  Send {Home} ; Move ahead (Emacs: CTRL+A)
Return
CapsLock & E::
  if GetKeyState("Shift") {
    Send ^{End}
    return
  }
  Send ^{End} ; Move end (Emacs: CTRL+E)
Return
CapsLock & Enter::Send {End}{Enter} ; Start new line
CapsLock & \::Send {Home}{Enter}{Up} ; Start new line at previous line
CapsLock & RShift::Send {Enter}{Left} ; Line split
CapsLock & Backspace::Send +{Home}{Backspace} ; Delete to line begin
CapsLock & Delete::Send +{End}{Backspace} ; Delete to line end
CapsLock & D::Send {Home}+{End}^c{End}{Enter}^v{Home 2} ; Duplicate line
CapsLock & W::Send {End}+{Home} ; Selected current line
CapsLock & C::Send {End}+{Home}^c ; Selected and Copy current line
CapsLock & X::Send {End}+{Home}^x+{Home}{Delete 2} ; Cut current line
CapsLock & V::Send {Home}{Enter}{Up}^v ; Paste to current line
CapsLock & Insert:: ; Paste plain text
  clipboard = %clipboard%
  Send ^v
Return
; function key
CapsLock & F1::RunNewInstance("help")
CapsLock & F2::
  if GetKeyState("Shift") {
    WinSet, AlwaysOnTop, On, A
    return
  }
  if GetKeyState("Alt") {
    WinSet, AlwaysOnTop, Off, A
    return
  }
  WinSet, AlwaysOnTop, Toggle, A ; bring current window to TopMost
Return
CapsLock & F3::RunAdvanced("C:\Program Files\Listary\Listary.exe") ; Run Listary
CapsLock & F4::RunAdvanced("C:\Tools\Everything.exe") ; Run Everything
CapsLock & F5::RunAdvanced("pageant.exe")
CapsLock & F6::RunAdvanced("puttygen.exe")
CapsLock & F7::RunCmdAndCloseAdvanced("psftp.exe")
CapsLock & F8::RunAdvanced("putty.exe")
CapsLock & F9::RunWtOrPowerShell() ; Run PowerShell
CapsLock & F10::RunCmdAdvanced("ver") ; Run cmd
CapsLock & F11::RunBash()
CapsLock & F12::RunGit() ; Run git-bash

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
ShowHelp() {
  title=%my_name% %my_version% %my_bit%bit
  msg=CapsLock+Esc Goto homepage.`nCapsLock+[``1234567890] Set current window tranparent to 0`%-100`%.`n`nCapsLock+Shift+F1~F12 Run xxx as administrator.`n`nCapsLock+F1 Show this.`nCapsLock+F2 Toggle window to topmost. +Alt/Shift turn off/on.`nCapsLock+F3 Run Listary.`nCapsLock+F4 Run Everything.`n`nCapsLock+F5 Run pageant.`nCapsLock+F6 Run puttygen.`nCapsLock+F7 Run psftp.`nCapsLock+F8 Run putty.`n`nCapsLock+F9 Run Windows Terminal or Powershell.`nCapsLock+F10 Run CMD.`nCapsLock+F11 Run Bash shell(WSL).`nCapsLock+F12 Run Git shell.`n`nWin+F1 Show WinX menu.`nWin+F2 Show Run dialog.`nWin+F3 Show Desktop.`nWin+F10 Mute.`nWin+F11 Volume down.`nWin+F12 Volume up.`n`nHot strings`n]now`t]time`t]date`t]longdate`t
  MsgBox ,,%title%,%msg%,
}

RunAdvanced(command)
{
  try {
    if GetKeyState("Shift") && not A_IsAdmin {
      Run *RunAs %command%
      Return
    }
    Run %command%
  }
}

RunCmdAdvanced(command)
{
  try {
    curPath := CurrentPath()
    if GetKeyState("Shift") {
      RunCmd(command, true)
      Return
    }
    RunCmd(command)
  }
}

RunCmdAndCloseAdvanced(command)
{
  try {
    curPath := CurrentPath()
    if GetKeyState("Shift") {
      RunCmdAndClose(command, true)
      Return
    }
    RunCmdAndClose(command)
  }
}

RunPowershell()
{
  try {
    curPath := CurrentPath()
    if GetKeyState("Shift") {
      Run *RunAs powershell.exe -NoExit "cd \"%curPath%\""
      Return
    }
    Run powershell.exe -NoExit "cd \"%curPath%\""
  }
}

RunWtOrPowerShell()
{
  try{
    curPath := CurrentPath()
    EnvGet, OutputVar, UserProfile
    OutputVar = %OutputVar%\AppData\Local\Microsoft\WindowsApps\wt.exe
    if FileExist(OutputVar){
      if GetKeyState("Shift") {
        Run *RunAs %OutputVar%, %curPath%
        Return
      }
      Run %OutputVar%, %curPath%
      Return
    }
  }
  RunPowershell()
}

RunGit()
{
  try{
    EnvGet, OutputVar, ProgramFiles
    OutputVar = %OutputVar%\Git\git-bash.exe
    if FileExist(OutputVar)
    {
      RunAdvanced("""" . OutputVar """ --cd=""" . CurrentPath() . """")
    }
    else
    {
      MsgBox ,,AHK,Sorry`, git-bash.exe don't exist.,3
    }
  }
}

RunBash()
{
  if FileExist("C:\Windows\System32\bash.exe")
  {
    RunCmdAndClose("""C:\Windows\System32\bash.exe"" --login") ; Run bash shell in win10 amd64
  }
  else if FileExist("C:\Windows\sysnative\bash.exe")
  {
    RunCmdAndClose("""C:\Windows\sysnative\bash.exe"" --login") ; Run bash shell in win10 x86
  }
  else
  {
    MsgBox ,,AHK,Sorry`, bash.exe or mintty.exe don't exist.,3
  }
}

RunCmd(command, runAsAdmin=false)
{
  curPath := CurrentPath()
  if runAsAdmin && not A_IsAdmin {
    Run *RunAs %comspec% /K "cd /d "%curPath%" & %command%"
  } else {
    Run %comspec% /K "cd /d "%curPath%" & %command%"
  }
}

RunCmdAndClose(command, runAsAdmin=false)
{
  curPath := CurrentPath()
  if runAsAdmin && not A_IsAdmin {
    Run *RunAs %comspec% /C "cd /d "%curPath%" & %command%"
  } else {
    Run %comspec% /C "cd /d "%curPath%" & %command%"
  }
}

RunMSYS2(mintty, mingw, runAsAdmin=false)
{
  curPath := CurrentPath()
  if (SubStr(curPath, -1) == ":\") {
    curPath .= "\" ; like C:\\
  }
  parameter = "-i /msys2.ico --dir `"%curPath%`" /bin/env MSYSTEM=%mingw% CHERE_INVOKING=1 /usr/bin/bash -l"
  if runAsAdmin && not A_IsAdmin {
    Run *RunAs "%mintty%" "%parameter%"
  } else {
    Run "%mintty%" "%parameter%"
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

KillProcess(byname=false) 
{
  WinGet, cur_pid, PID, A
  WinGet, process_name, ProcessName, A
  if (process_name = "Explorer.EXE") {
    return
  }
  try {
    if not A_IsAdmin {
      if byname {
        Run *RunAs taskkill.exe /F /IM %process_name%,,Hide
        return
      }
      Run *RunAs taskkill.exe /F /PID %cur_pid%,,Hide
      return
    }
    if byname {
      Run taskkill.exe /F /IM %process_name%,,Hide
      return
    }
    Run taskkill.exe /F /PID %cur_pid%,,Hide
  }
}

HideOtherWindow()
{
  WinGetClass, cur_class, A
  DetectHiddenText, Off
  WinGet, id, list,,, Program Manager
  Loop, %id%
  {
    this_id := id%A_Index%
    WinGetClass, this_class, ahk_id %this_id%
    if (this_class = cur_class or this_class = "Progman" or this_class = "WorkerW" or this_class = "Shell_TrayWnd" or this_class = "Internet Explorer_Hidden") {
      continue
    }
    WinMinimize, ahk_id %this_id%
  }
}

NextWindow()
{
  WinGetClass, cur_class, A
  acitve_id := 0
  DetectHiddenText, On
  WinGet, id, list,,, Program Manager
  ; don't break the loop
  Loop, %id%
  {
    this_id := id%A_Index% 
    WinGetClass, this_class, ahk_id %this_id%
    if (this_class != cur_class) {
      continue
    }
    if (acitve_id = 0) {
      active_id := this_id
    }
  }
  if (active_id != 0) {
    WinActivate, ahk_id %active_id%
  }
}

RealCurrentPath() {
  WinGetClass, cur_class, A
  WinGet, process_name, ProcessName, A
  if ((cur_class = "WorkerW" or cur_class = "Progman") and process_name = "Explorer.EXE") {
    return A_Desktop
  }
return CurrentPath(false, false)
}

CurrentPath(last = true, fallbackToDesktop = true)
{
  url := GetCurrentExplorerURL(last)
  if (url) {
    return ConvertExplorerURLToPath(url)
  }
  if (fallbackToDesktop) {
    return A_Desktop
  }
return ""
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

SetTransparent(value) {
  if (value is not integer) {
    return
  }
  if (value >= 100 or value < 0) {
    WinSet, Transparent, 255, A
    return
  }
  value := value*255//100
  WinSet, Transparent, %value%, A
}

RunNewInstance(cmd, runAsAdmin = false) {
  If A_IsCompiled {
    if (runAsAdmin && not A_IsAdmin) {
      try {
        Run *RunAs %A_ScriptFullPath% %cmd%
      }
      return
    }
    Run %A_ScriptFullPath% %cmd%
    return
  }
  if (runAsAdmin && not A_IsAdmin) {
    try {
      Run *RunAs %A_AhkPath% %A_ScriptFullPath% %cmd%
    }
    return
  }
  Run %A_AhkPath% %A_ScriptFullPath% %cmd%
}

SwitchHiddenFiles() {
  SetRegView %my_bit%
  try {
    RegRead, OutputVar, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden
  }
  catch {
    OutputVar = 0
  }
  if (OutputVar and OutputVar = 1) {
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 0
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
  } else {
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 1
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
  }
}

CheckMoveFile() {
  target_dir := RealCurrentPath()
  if StrLen(target_dir) = 0 {
    return false
  }
  source_files := ""
  Loop, parse, clipboard, `n, `r
  {
    IfNotExist, %A_LoopField%, continue
      source_files = %source_files%%A_LoopField%|
  }
  if StrLen(source_files) = 0 {
    return false
  }
return true
}

ShellMoveFile() {
  target_dir := RealCurrentPath()
  if StrLen(target_dir) = 0 {
    return
  }
  ; fix network path "file://ipaddress/path" to "\\ipaddress\path"
  StringReplace, target_dir, target_dir, file:, , All
  StringReplace, target_dir, target_dir, /, \, All

  source_files := ""
  Loop, parse, clipboard, `n, `r
  {
    IfNotExist, %A_LoopField%, continue
      source_files = %source_files%%A_LoopField%|
  }
  if StrLen(source_files) = 0 {
    return
  }
  ;msgbox Will to move %source_files% to %target_dir%
  ShellFileOperation("FO_MOVE", source_files, target_dir,"FOF_ALLOWUNDO|FOF_SIMPLEPROGRESS|FOF_NOCONFIRMMKDIR") 
}

; https://autohotkey.com/board/topic/51486-shellfileoperation-library/
; https://github.com/7plus/7plus/blob/f3b270f7b182d2ad023efb00f51e6f77b3029520/Shell.ahk
; https://msdn.microsoft.com/en-us/library/windows/desktop/bb759795(v=vs.85).aspx
; ShellFileOperation("FO_MOVE", "::::", "::::","FOF_ALLOWUNDO|FOF_SIMPLEPROGRESS|FOF_NOCONFIRMMKDIR")     
; MsgBox % ErrorLevel
ShellFileOperation( fileO=0x0, fSource="", fTarget="", flags=0x0, ghwnd=0x0 ) 
{
  ;dout_f(A_ThisFunc)
  FO_MOVE := 0x1
  FO_COPY := 0x2
  FO_DELETE := 0x3
  FO_RENAME := 0x4

  FOF_MULTIDESTFILES := 0x1 ; Indicates that the to member specifies multiple destination files (one for each source file) rather than one directory where all source files are to be deposited.
  FOF_SILENT := 0x4 ; Does not display a progress dialog box.
  FOF_RENAMEONCOLLISION := 0x8 ; Gives the file being operated on a new name (such as "Copy #1 of...") in a move, copy, or rename operation if a file of the target name already exists.
  FOF_NOCONFIRMATION := 0x10 ; Responds with "yes to all" for any dialog box that is displayed.
  FOF_ALLOWUNDO := 0x40 ; Preserves undo information, if possible. With del, uses recycle bin.
  FOF_FILESONLY := 0x80 ; Performs the operation only on files if a wildcard filename (*.*) is specified.
  FOF_SIMPLEPROGRESS := 0x100 ; Displays a progress dialog box, but does not show the filenames.
  FOF_NOCONFIRMMKDIR := 0x200 ; Does not confirm the creation of a new directory if the operation requires one to be created.
  FOF_NOERRORUI := 0x400 ; don't put up error UI
  FOF_NOCOPYSECURITYATTRIBS := 0x800 ; dont copy file security attributes
  FOF_NORECURSION := 0x1000 ; Only operate in the specified directory. Don't operate recursively into subdirectories.
  FOF_NO_CONNECTED_ELEMENTS := 0x2000 ; Do not move connected files as a group (e.g. html file together with images). Only move the specified files.
  FOF_WANTNUKEWARNING := 0x4000 ; Send a warning if a file is being destroyed during a delete operation rather than recycled. This flag partially overrides FOF_NOCONFIRMATION.

  ; no more annoying numbers to deal with (but they should still work, if you really want them to)
  fileO := %fileO% ? %fileO% : fileO

  ; the double ternary was too fun to pass up
  _flags := 0
  Loop Parse, flags, |
    _flags |= %A_LoopField% 
  flags := _flags ? _flags : (%flags% ? %flags% : flags)

  If ( SubStr(fSource,0) != "|" )
    fSource := fSource . "|"

  If ( SubStr(fTarget,0) != "|" )
    fTarget := fTarget . "|"

  char_size := A_IsUnicode ? 2 : 1
char_type := A_IsUnicode ? "UShort" : "Char"

  fsPtr := &fSource
  Loop % StrLen(fSource)
    if NumGet(fSource, (A_Index-1)*char_size, char_type) = 124
    NumPut(0, fSource, (A_Index-1)*char_size, char_type)

  ftPtr := &fTarget
  Loop % StrLen(fTarget)
    if NumGet(fTarget, (A_Index-1)*char_size, char_type) = 124
    NumPut(0, fTarget, (A_Index-1)*char_size, char_type)
    /*
    typedef struct _SHFILEOPSTRUCT {
      HWND         hwnd; A_PtrSize
      UINT         wFunc; 4
      PCZZTSTR     pFrom; <-- LPCWSTR, A_PtrSize
      PCZZTSTR     pTo; A_PtrSize
      FILEOP_FLAGS fFlags; <-- WORD, 2
      BOOL         fAnyOperationsAborted;, 4
      LPVOID       hNameMappings; A_PtrSize
      PCTSTR       lpszProgressTitle; A_PtrSize
    } SHFILEOPSTRUCT, *LPSHFILEOPSTRUCT;
    Total:
    A_PtrSize + 4 (+ 4 Padding) Padding + A_PtrSize + A_PtrSize + 2 + 2 Padding + 4 + A_PtrSize + A_PtrSize = 12 (+4) + 5 x A_PtrSize
  */
  VarSetCapacity( SHFILEOPSTRUCT, 12 + 5 * A_PtrSize, 0) ; Encoding SHFILEOPSTRUCT
  NumPut( ghwnd, &SHFILEOPSTRUCT, "PTR") ; hWnd of calling GUI
  NumPut( fileO, SHFILEOPSTRUCT, A_PtrSize, "UINT") ; File operation
  NumPut( fsPtr, SHFILEOPSTRUCT, 2 * A_PtrSize, "PTR") ; Source file / pattern
  NumPut( ftPtr, SHFILEOPSTRUCT, 3 * A_PtrSize, "PTR" ) ; Target file / folder
  NumPut( flags, SHFILEOPSTRUCT, 4 * A_PtrSize, "Short" ) ; options

  DllCall( "Shell32\SHFileOperation" . (A_IsUnicode ? "W" : "A"), Ptr, &SHFILEOPSTRUCT )
  SHFILEOPSTRUCT := ""
Return
}
