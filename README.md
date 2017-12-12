# AHKShortcutLikeMac
An AHK Script for using keyboard shortcuts like MacOS on your Windows


Required: **AutoHotKey** [_HomePage_](https://www.autohotkey.com/) [_Github_](https://github.com/Lexikos/AutoHotkey_L/)
```
AutoHotKey v2 is alpha-release. Suggest use v1.1.*
```
v1.1.26.01 downloads
* [AutoHotkey Portable](https://www.autohotkey.com/download/1.1/AutoHotkey_1.1.26.01.zip)
* [AutoHotkey_Setup](https://www.autohotkey.com/download/1.1/AutoHotkey_1.1.26.01_setup.exe)
* [Help](https://www.autohotkey.com/download/1.1/AutoHotkeyHelp.zip)

Script Features:
* Hot string (e.g. `]date`, `]time`, `]now`, `]longdate`)
* Shortcuts table:

	| HotKeys                 | Desc                                                                          |
	| ---                     | ---                                                                           |
	| __MacOS shortcuts__     |                                                                               |
	| `Win+h`                 | Hide(minmize) current window                                                  |
	| `Win+Shift+h`           | Hide(minmize) other windows                                                   |
	| `Win+q`                 | Quit current application                                                      |
	| `Win+t`                 | New tab (Ctrl+T)                                                              |
	| `Win+Shift+t`           | Reload last tab (Ctrl+Shift+T)                                                |
	| `Win+N`                 | New...                                                                        |
	| `Win+O`                 | Open...                                                                       |
	| `Win+W`                 | Close the table                                                               |
	| `Win+S`                 | Save                                                                          |
	| `Win+P`                 | Print (Ctrl+P)                                                                |
	| `Win+Z`                 | Undo                                                                          |
	| `Win+Shift+Z`           | Redo                                                                          |
	| `Win+X`                 | Cut                                                                           |
	| `Win+C`                 | Copy                                                                          |
	| `Win+V`                 | Paste                                                                         |
	| `Win+Shift+Alt+V`       | Paste as text                                                                 |
	| `Win+A`                 | Select all                                                                    |
	| `Win+F`                 | Find (Ctrl+F)                                                                 |
	| `Win+G`                 | Find (F3)                                                                     |
	| `Win+Shift+G`           | Find previous (Shift+F3)                                                      |
	| `Win+Alt+F`             | Replace (Ctrl+H)                                                              |
	| `Win+Left/Right/Up/Down`| (Home/End/PgUp/PgDown)                                                        |
	| `Alt+Left/Right`        | (Ctrl+Left/Right)                                                             |
	| `Win+Alt+F`             | Full screen (F11)                                                             |
	| `Win+=`                 | Zoom in                                                                       |
	| `Win+-`                 | Zoom out                                                                      |
	| `Win+0`                 | Resize zoom (Ctrl+0)                                                          |
	| `Win+R`                 | Refresh                                                                       |
	| `Win+Backspace`         | Delete                                                                        |
	| `Win+Shift+3`           | Capture screen to clipboard                                                   |
	| `Win+Shift+4`           | Capture actived window to clipboard                                           |
	| `Win+F3`                | Show desktop                                                                  |
	| `Win+I`                 | Show file/folder property dialog (Alt+Enter)                                  |
	| `Win+F10`               | Mute                                                                          |
	| `Win+F11`               | Volume down                                                                   |
	| `Win+F12`               | Volume up                                                                     |
	| `Win+Shift+Backspace`   | Empty Recycle Bin                                                             |
	| `Win+Shift+Alt+Backspace`| Empty Recycle Bin without prompt                                             |
	| __Explorer shortcuts__  |                                                                               |
	| `Win+Enter`             | Rename (F2)                                                                   |
	| `Win+O`                 | Open (Enter)                                                                  |
	| `Win+Up`                | Up to                                                                         |
	| `Win+Down`              | Open (Enter) same to `Win+O`                                                  |
	| __CapsLock+ shortcuts__ |                                                                               |
	| `CapsLock+Space`        | Input 4 spaces.                                                               |
	| `CapsLock+Backspace`    | Delete to line head.                                                          |
	| `CapsLock+Delete`       | Delete to line end.                                                           |
	| `CapsLock+Enter`        | New line.                                                                     |
	| `CapsLock+d`            | Duplicate line.                                                               |
	| `CapsLock+a`            | Selected current line.                                                        |
	| `CapsLock+c/x/v`        | Copy/Cut/PasteAt current line.                                                |
	| `CapsLock+Insert`       | Paste as text.                                                                |
	| __LAlt+ shortcuts__     | LAlt means left alt key.                                                      |
	| `LAlt+c/x`              | Copy/Cut to line end.                                                         |
	| `LAlt+v`                | paste and go/enter.                                                           |
	| __Function Key__        |                                                                               |
	| `CapsLock+F1`           | Show CapsLock+Fn prompt.                                                      |
	| `CapsLock+F2`           | Toggle window topmost.                                                        |
	| `CapsLock+F9`           | PowerShell in current explorer path                                           |
	| `CapsLock+F10`          | CMD in current explorer path                                                  |
	| `CapsLock+F11`          | Git (http://www.git-scm.com/download/win) in current explorer path            |
	| `CapsLock+F12`          | Bash (Win10 WSL) in current explorer path                                     |
	| __Special Key__         |                                                                               |
	| `Win+F1`                | Show Windows WinX Menus                                                       |
	| `Win+F2`                | Show Windows run dialog                                                       |
	| and more...             |                                                                               |


Known Issue:
* `CapsLock+F12` to show bash shell, only support U64 mode.

Thanks: 
* [@g1084164986](https://github.com/g1084164986) - Mouse direction support.
* [@liuyukuan](http://blog.csdn.net/liuyukuan/article/details/53885184) - Explorer rename support by his `ActiveControlIsOfClass` code.


Tips:
* Autorun: You can complited it to an execute file by **Ahk2Exe**, then create a shortcut file into Startup Menu(Win10: `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`).
* Shortcuts mapping at Virual Mathine(XP ~ win10) on mac.
* ~~Has `WIN` key conflict when AHK with StartIsBack++. A suggest replace StartIsBack++ with Start10, or use system start.~~ Try newest StartIsBack++.

