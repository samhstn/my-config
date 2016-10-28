# My OSX Configuration

## Chrome
Install Chrome and set it as the default browser
Add the [Vimium Chrome Extension](https://vimium.github.io/)

## Applications to download
**Spectacle** - For quick setting of your application window sizes

**Karabiner** - Faster key repeat and key remapping

**Seil** - For remapping the caps lock key

**Source Tree** - For better git visualization and management

**iterm2** - For more control in with your terminal setup

**Atom** - A easily configurable, beginner friendly text editor which is great for pair programming

----

### Spectacle

<img src="https://dl2.macupdate.com/images/icons256/41147.png" align="right" height="150px" />

These are the only commands I use
I have configured them away from the default to not override other hotkeys

 - Fullscreen: cmd + alt + ctrl + p
 - Centre: cmd + alt + ctrl + m
 - Left Half: cmd + alt + ctrl + h
 - Right Half: cmd + alt + ctrl + l
 - Top Half: cmd + alt + ctrl + k
 - Bottom Half: cmd + alt + ctrl + j

Ensure in **`> System Preferences > Security`** you have allowed Spectacle control to your computer

----

### Karabiner

<img src="https://dl2.macupdate.com/images/icons256/25141.png" align="right" height="150px" />

**`> General > Change Control_L Key(Left Control)`** dropdown
Tick: Control_L to Control_L (+ When you type Control_L only, send Escape)

<img src="imgs/karabiner_ctrl_remap.png" />

**`> Key repeat`**
Tick: override the key repeat values of system
Set: Delay until repeat: 150, Key repeat: 25

<img src="imgs/karabiner_key_repeat.png" />

Ensure in **`> System Preferences > Security`** you have allowed Karabiner control to your computer

----

### Seil

<img src="https://pqrs.org/osx/karabiner/img/seil-icon@2x.png" align="right" height="150px" />

Click change caps lock key and set input key code: 59

**`> System Preferences > keyboard > modifier keys`**
Change Caps Lock key to "No Action"

<br/><br/><br/><br/>

----

### Source Tree

<img src="https://blog.sourcetreeapp.com/files/2014/09/SourceTreeNewIcon-300x300.png" align="right" height="150px" />

Follow the instructions to install after downloading from here: https://www.sourcetreeapp.com/

<br/><br/><br/><br/>

----

### iterm2

<img src="https://upload.wikimedia.org/wikipedia/en/d/d7/ITerm2-icon.png" align="right" height="150px" />

**`> Preferences (cmd + ,) > General`**
Untick "Confirm closing multiple sessions"
Untick "Confirm Quit iTerm2"

**`> Preferences > Profiles > General > Working directory`**
Select Reuse previous session's directory

**`> Preferences > Profiles > Window > Settings For New windows`**
Columns: 250, Rows: 100 - For a full screen terminal window each session

----

### Atom

<img src="https://og.github.com/atom-mark/atom-mark@1200x630.png" align="right" height="150px" />

Themes: `seti-ui` and `seti-syntax`

Packages: `file-icons`, `highlight-selected`, `linter`, `linter-eslint` and `markdown-preview`

<br/><br/><br/><br/>

----

### Misc

<img src="http://core0.staticworld.net/images/article/2013/10/system-preferences-gallery-100065979-large.png" align="right" height="150px" />

**`> System Preferences > Trackpad`**
Tick: "Tap to click"

To get rid of press and hold character completion, run:
`defaults write -g ApplePressAndHoldEnabled -bool false`

Empty the dock of every application and only have:
Finder, Chrome, iterm2, SourceTree, Atom and Trash

Hide the dock by right clicking it and selecting:
"Turn hiding on"

<img src="imgs/doc_applications.png" />

----

## Programs

### Homebrew

Follow instructions here: http://brew.sh

### Git

`brew update`

`brew install git`

Cache your git credentials by running:

`git config --global credential.helper osxkeychain`

`git config --global user.name <yourname>`
`git config --global user.email <your@email.com>`

_Note:_ if you have two factor authentication, your password will be your pa-key

### Node

You should install node with nvm, since then you will have more control over which version you are using.

Install it with:

`curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash`
(taken from [nvm](https://github.com/creationix/nvm)

Check out the most recent version of node [here](https://nodejs.org/en/) and install it

For me it was:

`nvm install 6.9`

### Postgres

`brew update`

`brew install postgres`

Start the postgres server: `postgres -D /usr/local/var/postgres`

In a new terminal window run: `psql -d postgres`

### Redis

`brew update`

`brew install redis`

Start the redis server: `redis-server`

In a new terminal window run: `redis-cli`

Now type `ping` and it should respond `pong`

### Sass

`gem install sass`

If you get a permissions error, DONT SUDO!

Instead change ownership of that directory

`sudo chown -R $(whoami) /Library/Ruby/Gems/2.0.0` (or whatever ruby version you have)

Then run the command again

## Dot files

My vim config can be found [here](https://github.com/shouston3/My-Config/blob/master/.vimrc) and dowloaded with:

`curl https://cdn.rawgit.com/shouston3/My-Config/master/.vimrc > ~/.vimrc`

I prefer to use the zsh shell with the oh-my-zsh extensions as opposed to the bash shell, see why [here](https://github.com/shouston3/My-Config/blob/master/WHY_ZSH.md)

My terminal theme can be found [here](https://github.com/shouston3/My-Config/blob/master/sams-theme.zsh-theme) and after you have oh-my-zsh installed, install with:

`curl https://cdn.rawgit.com/shouston3/My-Config/master/sams-theme.zsh-theme > ~/.oh-my-zsh/themes`

Then set up by changing `ZSH_THEME="robbyrussel"` to `ZSH_THEME="sams-theme"`

[Here](https://github.com/shouston3/My-Config/blob/master/sams-aliases.plugin.zsh) are the functions and aliases I use day to day

They can be installed with:

`curl https://cdn.rawgit.com/shouston3/My-Config/master/sams-aliases.plugin.zsh > ~/.oh-my-zsh/plugins/sams-aliases.plugin.zsh`

Then set up by adding "sams-aliases" to your zsh plugins

Your terminal should look something like this

<img src="imgs/terminal.png" />

Now your set up with exactly my configuration!

If you think I have missed anything out, or should be doing something differently let me know in an [issue](https://github.com/shouston3/my-config/issues)

Or through gitter - [![gitter badge](https://img.shields.io/badge/gitter-shouston3-brightgreen.svg)](https://gitter.im/shouston3)
