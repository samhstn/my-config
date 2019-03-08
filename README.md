# My OSX Configuration

## Cleaning your mac

It is good to factory reset your mac often, to be aware of everything you have installed and to remove unwanted clutter.

The steps for cleaning your mac are as follows:

+ Back up what you need
+ Boot your mac in recovery mode (Restart while holding `Cmd + R`)
+ Select `Disk Utility`, then click `Continue`
+ Click `Internal > Untitled`, then `Erase`
+ Click `Erase` in the prompt
+ Once this has completed, click `Done`
+ Close the window by clicking the red cross in the top left
+ Click `Reinstall macOS`, then `Continue`

## Applications to download

+ [**Googe Chrome**](https://github.com/shouston3/My-Config/tree/master#googe-chrome) - My browser choice

+ [**Karabiner-Elements**](https://github.com/shouston3/My-Config/tree/master#karabiner-elements) - For key remappings

+ [**Spectacle**](https://github.com/shouston3/My-Config/tree/master#spectacle) - For quick setting of application window sizes

+ [**Iterm2**](https://github.com/shouston3/My-Config/tree/master#iterm2) - For a better terminal

+ [**Docker**](https://github.com/shouston3/My-Config/tree/master#docker) - For configuring reliable deployments

## Programs to install

+ [**Zsh**](https://github.com/shouston3/My-Config/tree/master#zsh)

+ [**Vim**](https://github.com/shouston3/My-Config/tree/master#vim)

+ [**Homebrew**](https://github.com/shouston3/My-Config/tree/master#homebrew)

+ [**Git**](https://github.com/shouston3/My-Config/tree/master#git)

+ [**AWS**](https://github.com/shouston3/My-Config/tree/master#aws)

+ [**Node**](https://github.com/shouston3/My-Config/tree/master#node)

+ [**Elixir**](https://github.com/shouston3/My-Config/tree/master#elixir)

+ [**Python**](https://github.com/shouston3/My-Config/tree/master#python)

+ [**Postgres**](https://github.com/shouston3/My-Config/tree/master#postgres)

+ [**Redis**](https://github.com/shouston3/My-Config/tree/master#redis)

+ [**Heroku toolbelt**](https://github.com/shouston3/My-Config/tree/master#heroku-toolbelt)

+ [**Grip**](https://github.com/shouston3/My-Config/tree/master#grip)

+ [**Ngrok**](https://github.com/shouston3/My-Config/tree/master#ngrok)

+ [**Ffmpeg and Gifsicle**](https://github.com/shouston3/My-Config/tree/master#ffmpeg-and-gifsicle)

## Misc

+ [**Misc**](https://github.com/shouston3/My-Config/tree/master#misc-1)
+ [**Config installation**](https://github.com/shouston3/My-Config/tree/master#config-installation)

----

#### Googe Chrome

**`Settings > Preferences > Theme > Dark`**

**Extensions**:

<img src="https://raw.githubusercontent.com/philc/vimium/master/icons/icon128.png" align="right" height="80" />

+ [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en) - Allows for browsing the web without leaving your keyboard

<br><br>

<img src="http://core0.staticworld.net/images/article/2013/03/splash-100030679-large.jpg" align="right" height="80" />

+ [Lastpass](https://www.lastpass.com/) - For managing all your passwords

<br><br>

<img src="http://www.yournerdybestfriend.com/wp-content/uploads/2013/07/color-picker-icon_final.jpg" align="right" height="80" />

+ [Colorzilla](http://www.colorzilla.com/) - For picking colours from your browser

<br><br>

<img src="https://getadblock.com/images/adblock_logo_stripe_test.png" align="right" height="80" />

+ [Adblock](https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom) - Because I don't like seeing adverts

<br><br>

<img src="https://github.com/maximelebreton/quick-javascript-switcher/raw/master/src/icons/icon-48.png" align="right" height="80" />

+ [Quick Javascript Switcher](https://chrome.google.com/webstore/detail/quick-javascript-switcher/geddoclleiomckbhadiaipdggiiccfje) - I like to turn this off and on

<br><br>

----

#### Karabiner-Elements

<img src="https://dl2.macupdate.com/images/icons256/25141.png" align="right" height="150px" />

The only feature I use is remapping my `Caps-Lock` key to `Esc` when tapped and to `Ctrl` when held

This can be set up by importing the `Change caps_lock key` modifier keys sample from [pqrs](https://pqrs.org/osx/karabiner/complex_modifications/)

Then:

+ inside the Karabiner elements app, go to the `Complex Modifications` tab

+ click `add rule`

+ enable the `Change caps_lock to control if pressed with other keys, to escape if pressed alone.` rule

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

**`> Preferences`**
Tick `Launch Spectacle at login`

Ensure to move the Spectacle app from the `Downloads` folder to the `Applications` folder (Thanks to comment [here](https://github.com/eczarny/spectacle/issues/776#issuecomment-348722654)).

----

#### Iterm2

<img src="https://upload.wikimedia.org/wikipedia/en/d/d7/ITerm2-icon.png" align="right" height="150px" />

**`> Preferences (cmd + ,) > General`**
Untick "Confirm closing multiple sessions"
Untick "Confirm Quit iTerm2"

**`> Preferences > Profiles > General > Working directory`**
Select Reuse previous session's directory

**`> Preferences > Profiles > Window > Settings For New windows`**
Columns: 250, Rows: 100 - For a full screen terminal window each session

**`> Preferences > Profiles > Terminal > Notifications`**
Tick `Silence bell`

----

#### Docker

<img src="https://www.docker.com/sites/default/files/social/docker_facebook_share.png" align="right" height="150px" />

Docker desktop can be downloaded from here: https://docs.docker.com/docker-for-mac/install/

You may have to log in to [`DockerHub`](https://hub.docker.com/) to perform the download.

----

#### Zsh

The modern shell supported by an [awesome community](http://ohmyz.sh/)

See installation of my config [below](https://github.com/shouston3/my-config#config-installation)

----

#### Vim

See installation of my config [below](https://github.com/shouston3/my-config#config-installation)

I use `MacVim` in the terminal.

This can be installed with:

```bash
brew install macvim
```

I open `vim` in the terminal with `mvim -v` which has been aliased to `alias m='mvim -v'`

----

#### Homebrew

Follow instructions here: http://brew.sh

This is what I ran:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

----

#### Git

```bash
brew install git
```

If you have `sams-config` `zsh` plugin installed, you can configure your ssh key by running:

```bash
keygen <hostname> <company-name>
```

For example:

```bash
keygen github.com samhstn
```

Then paste what is currently in your clipboard into the `key` section [here](https://github.com/settings/ssh/new)

Otherwise you can follow instructions for setting up your ssh keys in [this medium article](https://medium.com/@fredrikanderzon/setting-up-ssh-keys-for-multiple-bitbucket-github-accounts-a5244c28c0ac)

Cache your git credentials by running:

```bash
git config --global credential.helper osxkeychain
git config --global user.name <yourname>
git config --global user.email <your@email.com>
```

You should also globally ignore your `.DS_Store`, this can be done with:

```bash
echo ".DS_Store" > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```

By default `git` sends it's gb output to the system pager, I always would like this disabled for the `git branch` command.

This can be configured (see [here](https://stackoverflow.com/a/48370253)) by running the following command:

```bash
git config --global pager.branch false
```

For `git diff` I would like it to output to the system pager if the diff doesn't fit on the terminal screen and output to stdout otherwise.

This can be configured (see [here](https://stackoverflow.com/a/31399632/4699289)) by running:

```bash
git config --global core.pager "less -FRSX"
```

----

#### AWS

```bash
brew install awscli
# configure your region, access key id and secret access key
aws configure
```

----

#### Node

I install `node` with `brew` - you can use `nvm`, but I don't find I need to change my node version often enough.

Install with:

```bash
brew install node
```

----

#### Elixir

As simple as:

```bash
brew install elixir
```

I've also installed [Phoenix](http://www.phoenixframework.org/) along side this

For the most up to date installation instructions see [here](http://www.phoenixframework.org/docs/installation#section-phoenix)

It can be installed with:

```bash
mix archive.install hex phx_new 1.4.0
```

----

#### Python

Although mac comes with `python`, I would recommend upgrading to python3, also we don't have `pip` and other python related tools

Get these by running:

```bash
brew install python3
pip3 install --upgrade pip setuptools wheel
```

----

#### Postgres

```bash
brew install postgres
createdb $(whoami)
```

Start the postgres server: `postgres -D /usr/local/var/postgres` (If you are using my `alias`es, you can just run `pg`).

In a new terminal window run: `psql`

I would also recommend using a gui for visualising your database, [Postico](https://eggerapps.at/postico/) would be my choice

You can install it by clicking the download link [here](https://eggerapps.at/postico/) and following the download instructions

----

#### Redis

`brew install redis`

Start the redis server: `redis-server`

In a new terminal window run: `redis-cli`

Now type `ping` and it should respond `pong`

----

#### Heroku toolbelt

Install with:

```bash
brew install heroku/brew/heroku
```

----

#### Grip

If looking for a gui markdown previewer, look at using [haroopad](http://pad.haroopress.com)

I personally don't like guis and want something I can run from the terminal

Install [Grip](https://github.com/joeyespo/grip) with:

```bash
brew install grip
```

----

#### Ngrok

[Ngrok](https://ngrok.com) makes it really easy to spin up a quick public `http` url.

Install with:

```bash
brew cask install ngrok
```

----

#### Ffmpeg and Gifsicle

[Ffmpeg](https://www.ffmpeg.org/) and [Gifsicle](https://www.lcdf.org/gifsicle/) can be used to convert `.mov` files to `.gif`

Inspired by [this `gist`](https://gist.github.com/dergachev/4627207)

Install with:

```bash
brew install ffmpeg
brew cask install x-quartz #dependency for gifsicle, only required for mountain-lion and above
open /usr/local/Cellar/x-quartz/2.7.4/XQuartz.pkg # runs the XQuartz installer
brew install gifsicle
```

If you have `sams-config` `zsh` plugin installed, you can convert any `.mov` file to `.gif`, by running the command:

```bash
movtogif ~/path/to/file.mov
```

----

#### Misc

<img src="http://core0.staticworld.net/images/article/2013/10/system-preferences-gallery-100065979-large.png" align="right" height="150px" />

`> System Preferences > Trackpad`

Tick: `Tap to click`

To get rid of press and hold character completion, run:

```bash
defaults write -g ApplePressAndHoldEnabled -bool false
```

Hide the dock by right clicking it and selecting: `Turn hiding on`

My key repeat settings found in `System Preferences > Keyboard` are:

+ Key Repeat: `Fast`est
+ Delay Until Repeat: `Short`est

----

#### Config installation

My config can be installed with the following commands:

```bash
export RAW_MY_CONF_GH_URL="https://raw.githubusercontent.com/samhstn/my-config/master"

# Configure our `.vimrc`
curl -SLs "$RAW_MY_CONF_GH_URL/.vimrc" > ~/.vimrc

# Setup vim packages
mkdir -p ~/.vim/pack/bundle/start

# Add `vim-repeat` and `vim-surround` packages
git clone git://github.com/tpope/vim-repeat.git ~/.vim/pack/bundle/start/vim-repeat
git clone git://github.com/tpope/vim-surround.git ~/.vim/pack/bundle/start/vim-surround

# Install zsh - taken from the [`oh-my-zsh` repo](https://github.com/robbyrussell/oh-my-zsh#via-curl)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Add sams theme and plugin
md ~/.oh-my-zsh/plugins/sams-config
curl -SLs "$RAW_MY_CONF_GH_URL/sams-config.plugin.zsh" > ~/.oh-my-zsh/plugins/sams-config/sams-config.plugin.zsh
curl -SLs "$RAW_MY_CONF_GH_URL/sams-theme.zsh-theme" > ~/.oh-my-zsh/themes/sams-theme.zsh-theme
```

Now edit your `.zshrc` like so:

```vim
# Add `sams-theme`
ZSH_THEME="sams-theme"

# Configure the following plugins
plugins=(
  git
  sams-config
  vi-mode
)
```

----

Now your set up with exactly my configuration!

If you think I have missed anything out, or should be doing something differently let me know in an [issue](https://github.com/shouston3/my-config/issues)

Or through gitter - [![gitter badge](https://img.shields.io/badge/gitter-samhstn-brightgreen.svg)](https://gitter.im/samhstn)
