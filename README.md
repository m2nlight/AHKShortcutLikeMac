# AHKShortcutLikeMac

An AHK Script for using keyboard shortcuts like MacOS on your Windows

About **AutoHotKey** [_HomePage_](https://www.autohotkey.com/) [_Github_](https://github.com/Lexikos/AutoHotkey_L/)

```txt
AutoHotKey v2 is alpha-release. Suggest use v1.1.*
```

v1.1.33.02 downloads

* [AutoHotkey Portable](https://www.autohotkey.com/download/1.1/AutoHotkey_1.1.33.02.zip)

Script Features:

* Hot string (e.g. `]date`, `]time`, `]now`, `]longdate`)
* Shortcuts table:

 | HotKeys                                                                                | Desc                                              |
 | -------------------------------------------------------------------------------------- | ------------------------------------------------- |
 | _MacOS shortcuts_                                                                      |                                                   |
 | <kbd>Win</kbd> <kbd>`</kbd>                                                            | Active next same class window                     |
 | <kbd>Win</kbd> <kbd>H</kbd>                                                            | Hide(minimize) current window                     |
 | <kbd>Win</kbd> <kbd>Alt</kbd> <kbd>H</kbd>                                             | Hide(minimize) other windows                      |
 | <kbd>Win</kbd> <kbd>M</kbd>                                                            | Hide(minimize) current windows                    |
 | <kbd>Win</kbd> <kbd>Alt</kbd> <kbd>M</kbd>                                             | Hide(minimize) all windows                        |
 | <kbd>Win</kbd> <kbd>Q</kbd>                                                            | Quit current application                          |
 | <kbd>Win</kbd> <kbd>T</kbd>                                                            | New tab (Ctrl+T)                                  |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>T</kbd>                                           | Reload last tab (Ctrl+Shift+T)                    |
 | <kbd>Win</kbd> <kbd>N</kbd>                                                            | New...                                            |
 | <kbd>Win</kbd> <kbd>O</kbd>                                                            | Open...                                           |
 | <kbd>Win</kbd> <kbd>W</kbd>                                                            | Close the table                                   |
 | <kbd>Win</kbd> <kbd>S</kbd>                                                            | Save                                              |
 | <kbd>Win</kbd> <kbd>P</kbd>                                                            | Print (Ctrl+P)                                    |
 | <kbd>Win</kbd> <kbd>Z</kbd>                                                            | Undo                                              |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Z</kbd>                                           | Redo                                              |
 | <kbd>Win</kbd> <kbd>X</kbd>                                                            | Cut                                               |
 | <kbd>Win</kbd> <kbd>C</kbd>                                                            | Copy                                              |
 | <kbd>Win</kbd> <kbd>V</kbd>                                                            | Paste                                             |
 | <kbd>Win</kbd> <kbd>Alt</kbd> <kbd>V</kbd>                                             | Move files from clipboard to current location     |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Alt</kbd> <kbd>V</kbd>                            | Paste as text                                     |
 | <kbd>Win</kbd> <kbd>A</kbd>                                                            | Select all                                        |
 | <kbd>Win</kbd> <kbd>F</kbd>                                                            | Find (Ctrl+F)                                     |
 | <kbd>Win</kbd> <kbd>G</kbd>                                                            | Find (F3)                                         |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>G</kbd>                                           | Find previous (Shift+F3)                          |
 | <kbd>Win</kbd> <kbd>Alt</kbd> <kbd>F</kbd>                                             | Replace (Ctrl+H)                                  |
 | <kbd>Win</kbd> <kbd>Left</kbd> or <kbd>Right</kbd> or <kbd>Up</kbd> or <kbd>Down</kbd> | (Home/End/PgUp/PgDown)                            |
 | <kbd>Alt</kbd> <kbd>Left</kbd> or <kbd>Right</kbd>                                     | (Ctrl+Left/Right)                                 |
 | <kbd>Win</kbd> <kbd>Alt</kbd> <kbd>F</kbd>                                             | Full screen (F11)                                 |
 | <kbd>Win</kbd> <kbd>=</kbd>                                                            | Zoom in                                           |
 | <kbd>Win</kbd> <kbd>-</kbd>                                                            | Zoom out                                          |
 | <kbd>Win</kbd> <kbd>0</kbd>                                                            | Resize zoom (Ctrl+0)                              |
 | <kbd>Win</kbd> <kbd>R</kbd>                                                            | Refresh                                           |
 | <kbd>Win</kbd> <kbd>Backspace</kbd>                                                    | Delete                                            |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>3</kbd>                                           | Capture screen to clipboard                       |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>4</kbd>                                           | Capture screen with region (Win10)                |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>5</kbd>                                           | Start Snipping Tool (Win10)                       |
 | <kbd>Win</kbd> <kbd>F3</kbd>                                                           | Show desktop                                      |
 | <kbd>Win</kbd> <kbd>I</kbd>                                                            | Show file/folder property dialog (Alt+Enter)      |
 | <kbd>Win</kbd> <kbd>F10</kbd>                                                          | Mute                                              |
 | <kbd>Win</kbd> <kbd>F11</kbd>                                                          | Volume down                                       |
 | <kbd>Win</kbd> <kbd>F12</kbd>                                                          | Volume up                                         |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Backspace</kbd>                                   | Empty Recycle Bin                                 |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Alt</kbd> <kbd>Backspace</kbd>                    | Empty Recycle Bin without prompt                  |
 | <kbd>Win</kbd> <kbd>Alt</kbd> <kbd>Esc</kbd>                                           | Run task manager                                  |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Alt</kbd> <kbd>Esc</kbd>                          | Kill current process                              |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Alt</kbd> <kbd>Ctrl</kbd> <kbd>Esc</kbd>          | Kill all image name processes                     |
 | __Explorer shortcuts__                                                                 |                                                   |
 | <kbd>Win</kbd> <kbd>Enter</kbd>                                                        | Rename (F2)                                       |
 | <kbd>Win</kbd> <kbd>O</kbd>                                                            | Open (Enter)                                      |
 | <kbd>Win</kbd> <kbd>Up</kbd>                                                           | Up to                                             |
 | <kbd>Win</kbd> <kbd>Down</kbd>                                                         | Open (Enter) same to `Win+O`                      |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>N</kbd>                                           | New folder                                        |  |
 | <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>.</kbd>                                           | Show or hide hidden files                         |  |
 | _CapsLock+ shortcuts_                                                                  |                                                   |
 | <kbd>CapsLock</kbd> <kbd>Space</kbd>                                                   | `Ctrl+Space`                                      |
 | <kbd>CapsLock</kbd> <kbd>Backspace</kbd>                                               | Delete to line head                               |
 | <kbd>CapsLock</kbd> <kbd>Delete</kbd>                                                  | Delete to line end                                |
 | <kbd>CapsLock</kbd> <kbd>Enter</kbd>                                                   | New line                                          |
 | <kbd>CapsLock</kbd> <kbd>RShift</kbd>                                                  | Line split                                        |
 | <kbd>CapsLock</kbd> <kbd>D</kbd>                                                       | Duplicate line                                    |
 | <kbd>CapsLock</kbd> <kbd>W</kbd>                                                       | Selected current line                             |
 | <kbd>CapsLock</kbd> <kbd>C</kbd> or <kbd>X</kbd> or <kbd>V</kbd>                       | Copy/Cut/PasteAt current line                     |
 | <kbd>CapsLock</kbd> <kbd>Insert</kbd>                                                  | Paste as text                                     |
 | <kbd>CapsLock</kbd> <kbd>Alt/Shift</kbd> <kbd>8</kbd>                                  | Input a random password                           |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>B</kbd>                                    | Move left                                         |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>F</kbd>                                    | Move right                                        |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>P</kbd>                                    | Move up                                           |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>N</kbd>                                    | Move down                                         |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>A</kbd>                                    | Move line start                                   |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>E</kbd>                                    | Move line end                                     |
 | <kbd>CapsLock</kbd> <kbd>`1234567890</kbd>                                             | Set current window transparent to 0% ~ 100%       |
 | _LAlt+ shortcuts_                                                                      | _LAlt means left alt key_                         |
 | <kbd>LAlt</kbd> <kbd>C</kbd> or <kbd>X</kbd>                                           | Copy/Cut to line end                              |
 | <kbd>LAlt</kbd> <kbd>V</kbd>                                                           | paste and go/enter                                |
 | _Function Key_                                                                         |                                                   |
 | <kbd>CapsLock</kbd> <kbd>Esc</kbd>                                                     | Homepage                                          |
 | <kbd>CapsLock</kbd> <kbd>F1</kbd>                                                      | Show Help                                         |
 | <kbd>CapsLock</kbd> <kbd>F2</kbd>                                                      | Toggle current window to topmost                  |
 | <kbd>CapsLock</kbd> <kbd>Alt/Shift</kbd> <kbd>F2</kbd>                                 | Turn off/on current window to topmost             |
 | <kbd>CapsLock</kbd> <kbd>F3</kbd>                                                      | Run Listary                                       |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>F4</kbd>                                   | Run Everything (as administrator)                 |
 | <kbd>CapsLock</kbd> <kbd>F5</kbd>                                                      | Run pageant ([PuTTY][1])                          |
 | <kbd>CapsLock</kbd> <kbd>F6</kbd>                                                      | Run puttygen ([PuTTY][1])                         |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>F7</kbd>                                   | Run psftp (as administrator) ([PuTTY][1])         |
 | <kbd>CapsLock</kbd> <kbd>F8</kbd>                                                      | Run putty ([PuTTY][1])                            |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>F9</kbd>                                   | Windows Terminal or PowerShell (as administrator) |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>F10</kbd>                                  | CMD (as administrator)                            |
 | <kbd>CapsLock</kbd> <kbd>F11</kbd>                                                     | Bash (Win10 WSL)                                  |
 | <kbd>CapsLock</kbd> <kbd>(Shift)</kbd> <kbd>F12</kbd>                                  | [Git-bash][2] (as administrator)                  |
 | _Special Key_                                                                          |                                                   |
 | <kbd>Win</kbd> <kbd>F1</kbd>                                                           | Show Windows WinX Menus                           |
 | <kbd>Win</kbd> <kbd>F2</kbd>                                                           | Show Windows run dialog                           |
 | <kbd>Win</kbd> <kbd>F3</kbd>                                                           | Show Desktop                                      |
 | <kbd>Win</kbd> <kbd>F10</kbd>                                                          | Mute                                              |
 | <kbd>Win</kbd> <kbd>F11</kbd>                                                          | Volume down                                       |
 | <kbd>Win</kbd> <kbd>F12</kbd>                                                          | Volume up                                         |
 | and more...                                                                            |                                                   |

[1]: https://www.chiark.greenend.org.uk/~sgtatham/putty/
[2]: http://www.git-scm.com/download/win

Thanks:

* [@g1084164986](https://github.com/g1084164986) - Mouse direction support.
* [@liuyukuan](http://blog.csdn.net/liuyukuan/article/details/53885184) - Explorer rename support by his `ActiveControlIsOfClass` code.

Tips:

* Auto run when logon: You can complied it to an execute file by **Ahk2Exe**, then create a shortcut file into Startup Menu(Win10: `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`)
  or create a schedule task:

  Copy `register_schedule_task.bat` with `machotkey.exe` in a folder, then run

  ```cmd
  register_schedule_task.bat
  ```

* Shortcuts mapping at Virtual Machine (XP~win10) on mac.
* [QuickLook](https://github.com/xupefei/QuickLook) is alike MacOS Quick-Look tool, press <kbd>Space</kbd> to preview some file in the Explorer.
* Switch <kbd>Win</kbd> and <kbd>Alt</kbd> by registry (win7 ~ win10):

  ```ini
  Windows Registry Editor Version 5.00

  [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layout]
  "Scancode Map"=hex:00,00,00,00,00,00,00,00,05,00,00,00,5b,e0,38,00,38,00,5b,e0,\
  5c,e0,38,e0,38,e0,5c,e0,00,00,00,00

  ```

  Restore key switch:

  ```ini
  Windows Registry Editor Version 5.00

  [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layout]
  "Scancode Map"=-

  ```

  A GUI tool name is [sharpkeys](https://github.com/randyrants/sharpkeys) can do this.
