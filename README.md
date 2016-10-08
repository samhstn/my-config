# My Dev setup

# Chrome
Install Chrome and set it as the default browser
Add the Vimium extension

## Applications to download
Spectacle - For quick setting of your application window sizes
Karabiner - Faster key repeat and key remapping
Seil - For remapping the caps lock key
Source Tree - For better git visualization and management
iterm2 - For more control in with your terminal setup
Atom - A easily configurable, beginner friendly text editor which is good for pair programming

#### Spectacle
These are the only commands I use
I have configured them away from the default to not override other hotkeys

Fullscreen: cmd + alt + ctrl + p
Center: cmd + alt + ctrl + m
Left Half: cmd + alt + ctrl + h
Right Half: cmd + alt + ctrl + l
Top Half: cmd + alt + ctrl + k
Bottom Half: cmd + alt + ctrl + j

Ensure > System Preferences > Security you have allowed Spectacle control to your computer

#### Karabiner

> General > Change Control_L Key(Left Control) dropdown
Control_L to Control_L (+ When you type Control_L only, send Escape)

> Key repeat
Tick: override the key repeat values of system
Set: Delay until repeat: 150, Key repeat: 25

Ensure > System Preferences > Security you have allowed Karabiner control to your computer

#### Seil

Click change caps lock key and set input key code: 59

System Preferences > keyboard > modifier keys
Change Caps Lock key to "No Action"

#### Source Tree

tbd

#### iterm2

> Preferences (cmd + ,) > General
Untick "Confirm closing multiple sessions"
Untick "Confirm Quit iTerm2"

> Preferences > Profiles > General > Working directory
Select Reuse previous session's directory

> Preferences > Profiles > Window > Settings For New windows
Columns: 250, Rows: 100 - For a full screen terminal window each session

#### Atom

tbd

#### Misc

> System Preferences > Trackpad
Tick: "Tap to click"

To get rid of press and hold character completion, run:
`defaults write -g ApplePressAndHoldEnabled -bool false`

Empty the dock of every application and only have:
Finder, Chrome, iterm2, SourceTree, Atom and Trash

Hide the dock by right clicking it and selecting:
"Turn hiding on"

## Programs

#### Homebrew

Follow instructions here: http://brew.sh

#### Git

`brew install git`

Cache your git credentials by running:

`git config --global credential.helper osxkeychain`

`git config --global user.name <yourname>`
`git config --global user.email <your@email.com>`

#### Postgres

tbd

#### Redis

tbd

#### Sass

tbd

## Dot files

tbd

