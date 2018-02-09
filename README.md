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
	| <kbd>Win</kbd> <kbd>H</kbd>                 | Hide(minmize) current window                                                  |
	| <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>H</kbd>           | Hide(minmize) other windows                                                   |
	| <kbd>Win</kbd> <kbd>Q</kbd>                 | Quit current application                                                      |
	| <kbd>Win</kbd> <kbd>T</kbd>                 | New tab (Ctrl+T)                                                              |
	| <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>T</kbd>           | Reload last tab (Ctrl+Shift+T)                                                |
	| <kbd>Win</kbd> <kbd>N</kbd>                 | New...                                                                        |
	| <kbd>Win</kbd> <kbd>O</kbd>                 | Open...                                                                       |
	| <kbd>Win</kbd> <kbd>W</kbd>                 | Close the table                                                               |
	| <kbd>Win</kbd> <kbd>S</kbd>                 | Save                                                                          |
	| <kbd>Win</kbd> <kbd>P</kbd>                 | Print (Ctrl+P)                                                                |
	| <kbd>Win</kbd> <kbd>Z</kbd>                 | Undo                                                                          |
	| <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Z</kbd>           | Redo                                                                          |
	| <kbd>Win</kbd> <kbd>X</kbd>                 | Cut                                                                           |
	| <kbd>Win</kbd> <kbd>C</kbd>                 | Copy                                                                          |
	| <kbd>Win</kbd> <kbd>V</kbd>                 | Paste                                                                         |
	| <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Alt</kbd> <kbd>V</kbd>       | Paste as text                                                                 |
	| <kbd>Win</kbd> <kbd>A</kbd>                 | Select all                                                                    |
	| <kbd>Win</kbd> <kbd>F</kbd>                 | Find (Ctrl+F)                                                                 |
	| <kbd>Win</kbd> <kbd>G</kbd>                 | Find (F3)                                                                     |
	| <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>G</kbd>           | Find previous (Shift+F3)                                                      |
	| <kbd>Win</kbd> <kbd>Alt</kbd> <kbd>F</kbd>             | Replace (Ctrl+H)                                                              |
	| <kbd>Win</kbd> <kbd>Left</kbd> or <kbd>Right</kbd> or <kbd>Up</kbd> or <kbd>Down</kbd>| (Home/End/PgUp/PgDown)                                                        |
	| <kbd>Alt</kbd> <kbd>Left</kbd> or <kbd>Right</kbd>        | (Ctrl+Left/Right)                                                             |
	| <kbd>Win</kbd> <kbd>Alt</kbd> <kbd>F</kbd>             | Full screen (F11)                                                             |
	| <kbd>Win</kbd> <kbd>=</kbd>                 | Zoom in                                                                       |
	| <kbd>Win</kbd> <kbd>-</kbd>                 | Zoom out                                                                      |
	| <kbd>Win</kbd> <kbd>0</kbd>                 | Resize zoom (Ctrl+0)                                                          |
	| <kbd>Win</kbd> <kbd>R</kbd>                 | Refresh                                                                       |
	| <kbd>Win</kbd> <kbd>Backspace</kbd>         | Delete                                                                        |
	| <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>3</kbd>           | Capture screen to clipboard                                                   |
	| <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>4</kbd>           | Capture actived window to clipboard                                           |
	| <kbd>Win</kbd> <kbd>F3</kbd>                | Show desktop                                                                  |
	| <kbd>Win</kbd> <kbd>I</kbd>                 | Show file/folder property dialog (Alt+Enter)                                  |
	| <kbd>Win</kbd> <kbd>F10</kbd>               | Mute                                                                          |
	| <kbd>Win</kbd> <kbd>F11</kbd>               | Volume down                                                                   |
	| <kbd>Win</kbd> <kbd>F12</kbd>               | Volume up                                                                     |
	| <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Backspace</kbd>   | Empty Recycle Bin                                                             |
	| <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Alt</kbd> <kbd>Backspace</kbd>| Empty Recycle Bin without prompt                                             |
	| __Explorer shortcuts__  |                                                                               |
	| <kbd>Win</kbd> <kbd>Enter</kbd>             | Rename (F2)                                                                   |
	| <kbd>Win</kbd> <kbd>O</kbd>                 | Open (Enter)                                                                  |
	| <kbd>Win</kbd> <kbd>Up</kbd>                | Up to                                                                         |
	| <kbd>Win</kbd> <kbd>Down</kbd>              | Open (Enter) same to `Win+O`                                                  |
	| <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>N</kbd> | New folder                                                  |                                              |
	| __CapsLock+ shortcuts__ |                                                                               |
	| <kbd>CapsLock</kbd> <kbd>Space</kbd>        | Input 4 spaces.                                                               |
	| <kbd>CapsLock</kbd> <kbd>Backspace</kbd>    | Delete to line head.                                                          |
	| <kbd>CapsLock</kbd> <kbd>Delete</kbd>       | Delete to line end.                                                           |
	| <kbd>CapsLock</kbd> <kbd>Enter</kbd>        | New line.                                                                     |
	| <kbd>CapsLock</kbd> <kbd>D</kbd>            | Duplicate line.                                                               |
	| <kbd>CapsLock</kbd> <kbd>A</kbd>            | Selected current line.                                                        |
	| <kbd>CapsLock</kbd> <kbd>C</kbd> or <kbd>X</kbd> or <kbd>V</kbd>        | Copy/Cut/PasteAt current line.                                                |
	| <kbd>CapsLock</kbd> <kbd>Insert</kbd>       | Paste as text.                                                                |
	| __LAlt+ shortcuts__     | LAlt means left alt key.                                                      |
	| <kbd>LAlt</kbd> <kbd>C</kbd> or <kbd>X</kbd>              | Copy/Cut to line end.                                                         |
	| <kbd>LAlt</kbd> <kbd>V</kbd>                | paste and go/enter.                                                           |
	| __Function Key__        |                                                                               |
	| <kbd>CapsLock</kbd> <kbd>F1</kbd>           | Show CapsLock+Fn prompt.                                                      |
	| <kbd>CapsLock</kbd> <kbd>F2</kbd>           | Toggle window topmost.                                                        |
	| <kbd>CapsLock</kbd> <kbd>F3</kbd>           | Run Listary.                                                        |
	| <kbd>CapsLock</kbd> <kbd>F4</kbd>           | Run Everything.                                                        |
	| <kbd>CapsLock</kbd> <kbd>F5</kbd>           | Run pageant.([PuTTY][1])                                                        |
	| <kbd>CapsLock</kbd> <kbd>F6</kbd>           | Run puttygen.([PuTTY][1])                                                        |
	| <kbd>CapsLock</kbd> <kbd>F7</kbd>           | Run psftp.([PuTTY][1])                                                        |
	| <kbd>CapsLock</kbd> <kbd>F8</kbd>           | Run putty.([PuTTY][1])                                                       |
	| <kbd>CapsLock</kbd> <kbd>F9</kbd>           | PowerShell in current explorer path                                           |
	| <kbd>CapsLock</kbd> <kbd>F10</kbd>          | CMD in current explorer path                                                  |
	| <kbd>CapsLock</kbd> <kbd>F11</kbd>          | [Git][2] in current explorer path            |
	| <kbd>CapsLock</kbd> <kbd>F12</kbd>          | Bash (Win10 WSL) or [MSYS2][3] in current explorer path                                     |
	| __Special Key__         |                                                                               |
	| <kbd>Win</kbd> <kbd>F1</kbd>                | Show Windows WinX Menus                                                       |
	| <kbd>Win</kbd> <kbd>F2</kbd>                | Show Windows run dialog                                                       |
	| and more...             |                                                                               |

[1]: https://www.chiark.greenend.org.uk/~sgtatham/putty/
[2]: http://www.git-scm.com/download/win
[3]: http://www.msys2.org/

* MSYS2 default directory: `C:\msys64` or `C:\msys32`. When Win10 bash is not found, try to start msys2 bash.


Thanks: 
* [@g1084164986](https://github.com/g1084164986) - Mouse direction support.
* [@liuyukuan](http://blog.csdn.net/liuyukuan/article/details/53885184) - Explorer rename support by his `ActiveControlIsOfClass` code.


Tips:
* Autorun: You can complited it to an execute file by **Ahk2Exe**, then create a shortcut file into Startup Menu(Win10: `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`).
* Shortcuts mapping at Virual Mathine(XP ~ win10) on mac.
* [QuickLook](https://github.com/xupefei/QuickLook) is alike MacOS Quick-Look tool, press <kbd>Space</kbd> to preview some file in the Explorer.
