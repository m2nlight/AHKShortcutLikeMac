# AHKShortcutLikeMac
An AHK Script for using keyboard shortcuts like MacOS on your Windows


Need software:
* AutoHotKey [Github](https://github.com/Lexikos/AutoHotkey_L/)
* AutoHotKey [Download](https://www.autohotkey.com/download/)


Script Features:
* Some macOS shortcuts (e.g. `win+q`, `win+h`, `win+s`, `win+c/x/v`, `alt+win+shift+v`, `win+backspace`, `win+shift+backspace`, `win+i`...)
* More shortcuts:

	| HotKeys                 | Desc                                                                     |
	| ---                     | ---                                                                      |
	| __CapsLock+ shortcuts__ |                                                                          |
	| `CapsLock+Space`        | Input 4 spaces.                                                          |
	| `CapsLock+Backspace`    | Delete to line head.                                                     |
	| `CapsLock+Delete`       | Delete to line end.                                                      |
	| `CapsLock+Enter`        | New line.                                                                |
	| `CapsLock+d`            | Duplicate line.                                                          |
	| `CapsLock+a`            | Selected current line.                                                   |
	| `CapsLock+c/x/v`        | Copy/Cut/PasteAt current line.                                           |
	| `CapsLock+Insert`       | Paste as text.                                                           |
	| __LAlt+ shortcuts__     |                                                                          |
	| `LAlt+c/x`              | Copy/Cut to line end.                                                    |
	| `LAlt+v`                | paste and go/enter.                                                      |
	| __Special Key__         |                                                                          |
	| `LWin+Alt`              | WinX menus in Win10                                                      |
	| `PageUp/PageDown`       | Volume up/down                                                           |
	| __Function Key__        |                                                                          |
	| `CapsLock+F1`           | Toggle window topmost.                                                   |
	| `CapsLock+F10/F9`       | Start a cmd.exe/git-sh in current explorer path.                         |
	| `LAlt+space`            | Call Listary, need you modify this ahk script to configure Listary path. |
	| and more...             |                                                                          |

* Hot string (e.g. `]date`, `]time`, `]now`, `]longdate`)
* `Win+F1` show hotkeys list window.


Tips:
* Autorun: You can complited it to an execute file by [Ahk2Exe](https://www.autohotkey.com/download/ahk2exe.zip), then create a shortcut file into Startup Menu(Win10: `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`).
* Shortcuts mapping at Virual Mathine(XP ~ win10) on mac.
* Has `WIN` key conflict when AHK meet StartIsBack++. A suggest uninstalling StartIsBack++ then install Start10 or not.

