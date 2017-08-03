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
* Some macOS shortcuts (e.g. `win+q`, `win+w`, `win+h`, `win+s`, `win+c/x/v`, `alt+win+shift+v`, `win+backspace`, `win+shift+backspace`, `win+i`...)
* Other shortcuts:

	| HotKeys                 | Desc                                                                          |
	| ---                     | ---                                                                           |
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
	| `CapsLock+F9~F12`       | F9:PowerShell, F10:CMD, F11:git-sh in current explorer path. F12:ListHotkeys. |
	| and more...             |                                                                               |

* Hot string (e.g. `]date`, `]time`, `]now`, `]longdate`)
* `Win+F1` show WinX menu in win10.


Tips:
* Autorun: You can complited it to an execute file by **Ahk2Exe**, then create a shortcut file into Startup Menu(Win10: `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`).
* Shortcuts mapping at Virual Mathine(XP ~ win10) on mac.
* Has `WIN` key conflict when AHK with StartIsBack++. A suggest replace StartIsBack++ with Start10, or use system start.

