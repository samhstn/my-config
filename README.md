# My OSX Configuration

This is my OSX setup for Sierra 10.12. I like a simple setup.

## Applications to download

[**Googe Chrome**](https://github.com/shouston3/My-Config/tree/master#googe-chrome) - My browser choice

[**Karabiner-Elements**](https://github.com/shouston3/My-Config/tree/master#karabiner-elements) - For key remappings

[**Spectacle**](https://github.com/shouston3/My-Config/tree/master#spectacle) - For quick setting of application window sizes

[**Iterm2**](https://github.com/shouston3/My-Config/tree/master#iterm2) - For a better terminal

## Programs to install

[**Zsh**](https://github.com/shouston3/My-Config/tree/master#zsh) - Modern shell backed by an [excellent community]()

[**Vim**](https://github.com/shouston3/My-Config/tree/master#vim)

[**Homebrew**](https://github.com/shouston3/My-Config/tree/master#homebrew) - OSX package manager

[**Git**](https://github.com/shouston3/My-Config/tree/master#git)

[**Sass**](https://github.com/shouston3/My-Config/tree/master#sass)

[**Node**](https://github.com/shouston3/My-Config/tree/master#node)

[**Elixir**](https://github.com/shouston3/My-Config/tree/master#elixir)

[**Python**](https://github.com/shouston3/My-Config/tree/master#python)

[**Postgres**](https://github.com/shouston3/My-Config/tree/master#postgres)

[**Redis**](https://github.com/shouston3/My-Config/tree/master#redis)

[**Heroku toolbelt**](https://github.com/shouston3/My-Config/tree/master#heroku-toolbelt)

## Misc

[**Misc**](https://github.com/shouston3/My-Config/tree/master#misc-1)

----

#### Googe Chrome

----

#### Spectacle

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

#### Karabiner-Elements

----

#### Iterm2

----

#### Zsh

My terminal theme can be found [here](https://github.com/shouston3/My-Config/blob/master/sams-theme.zsh-theme) and after you have oh-my-zsh installed, install with:

`curl https://cdn.rawgit.com/shouston3/My-Config/master/sams-theme.zsh-theme > ~/.oh-my-zsh/themes`

Then set up by changing `ZSH_THEME="robbyrussel"` to `ZSH_THEME="sams-theme"`

Your terminal should look something like this:

<img src="imgs/terminal.png" />

[Here](https://github.com/shouston3/My-Config/blob/master/sams-aliases.plugin.zsh) are the functions and aliases I use day to day

They can be installed with:

`curl https://cdn.rawgit.com/shouston3/My-Config/master/sams-aliases.plugin.zsh > ~/.oh-my-zsh/plugins`

Then set up by adding "sams-aliases" to your zsh plugins

I use the following plugin setup for `oh-my-zsh`:

```bash
plugins=(git sams-aliases vi-mode)
```

----

#### Vim

My vim config can be found [here](https://github.com/shouston3/My-Config/blob/master/.vimrc) and dowloaded with:

`curl https://cdn.rawgit.com/shouston3/My-Config/master/.vimrc > ~/.vimrc`

----

#### Homebrew

Follow instructions here: http://brew.sh

----

#### Git

`brew update`

`brew install git`

Cache your git credentials by running:

`git config --global credential.helper osxkeychain`

`git config --global user.name <yourname>`
`git config --global user.email <your@email.com>`

_Note:_ if you have two factor authentication, your password will be your pa-key

----

#### Sass

`gem install sass`

If you get a permissions error, DONT SUDO!

Instead change ownership of that directory

`sudo chown -R $(whoami) /Library/Ruby/Gems/2.0.0` (or whatever ruby version you have)

Then run the command again

----

#### Node

You should install node with nvm, since then you will have more control over which version you are using.

Install it with:

`curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash`
(taken from [nvm](https://github.com/creationix/nvm))

Check out the most recent version of node [here](https://nodejs.org/en/) and install it

For me it was:

```bash
nvm install 6.9`
```

----

#### Elixir

----

#### Python

----

#### Postgres

```bash
brew update
brew install postgres
createdb `whoami``
```

Start the postgres server: `postgres -D /usr/local/var/postgres`

In a new terminal window run: `psql`

----

#### Redis
`brew update`

`brew install redis`

Start the redis server: `redis-server`

In a new terminal window run: `redis-cli`

Now type `ping` and it should respond `pong`

----

#### Heroku toolbelt


#### Misc

<img src="http://core0.staticworld.net/images/article/2013/10/system-preferences-gallery-100065979-large.png" align="right" height="150px" />

**`> System Preferences > Trackpad`**
Tick: "Tap to click"

To get rid of press and hold character completion, run:
`defaults write -g ApplePressAndHoldEnabled -bool false`

Hide the dock by right clicking it and selecting:
"Turn hiding on"

----

Now your set up with exactly my configuration!

If you think I have missed anything out, or should be doing something differently let me know in an [issue](https://github.com/shouston3/my-config/issues)

Or through gitter - [![gitter badge](https://img.shields.io/badge/gitter-shouston3-brightgreen.svg)](https://gitter.im/shouston3)
