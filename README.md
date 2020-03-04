# My OSX Configuration

I like minimalist setup.

## Cleaning your mac

It is good to factory reset your mac often to be aware of everything you have installed and to remove unwanted clutter.

The steps for cleaning your mac are as follows:

+ Back up what you need.
+ Boot your mac in recovery mode (Restart while holding `Cmd + R`).
+ In the `Utility` menu, select `Disk Utility`.
+ Click `Erase` on all `Internal` drives (where permitted).
+ Once this has completed, click `Done`, then close the window to get back to the original menu.
+ Click `Reinstall macOS`, then `Continue`.

## Applications and programs to install

+ [**Brave**](#brave) - For a web browser with unmatched speed, security and privacy.

+ [**Karabiner-Elements**](#karabiner-elements) - For powerful key remapping.

+ [**Rectangle**](#rectangle) - "Move and resize windows in macOS using keyboard shortcuts or snap areas".

+ [**Iterm2**](#iterm2) - For a better terminal.

+ [**Qbserve**](#qbserve) - "Automatic Time Tracker for Mac".

+ [**Freedom**](#freedom) - "Block distracting websites and apps".

+ [**Homebrew**](#homebrew) - "The Missing Package Manager for macOS".

+ [**Docker**](#docker) - "Securely build and share any application, anywhere".

+ [**Zsh**](#zsh) - For a pleasant command line experience.

+ [**Vim**](#vim) - "The ubiquitous text editor".

+ [**Sketch**](#sketch) - For prototyping and building components.

## Misc

<img src="https://user-images.githubusercontent.com/15983736/75923590-4f158000-5e5d-11ea-877e-0f8b51010e4f.png" alt="system_preferences" width="180" align="right" />

Remove all applications in the dock except Brave, Qbserve and Iterm2.

<img src="https://user-images.githubusercontent.com/15983736/75920145-b5e36b00-5e56-11ea-9501-87c30d42da45.png" alt="dock" height="80" />

In `System preferences > Trackpad`:
+ tick: `Tap to click`.

In `System preferences > Keyboard`:
+ Key Repeat: `Fast`est.
+ Delay Until Repeat: `Short`est.

Hide the dock by right clicking it and selecting: `Turn hiding on`.

In `Security & Privacy > FileVault`:
+ `Turn on FileVault` and set a recovery key.

(I like to ignore the recovery key as I never store anything worth keeping on my machine).

----

### [Brave](https://brave.com/)

<img src="https://user-images.githubusercontent.com/15983736/75923206-83d50780-5e5c-11ea-8100-eee3b4a6a932.png" alt="brave" align="right" width="150" />

In browser settings (`Cmd + ,`):
+ tick: `Use wide address bar`.
+ set `Search engine used in the address bar` to: DuckDuckGo.

Add the [Lastpass](https://www.lastpass.com/) extension - For managing all your passwords.

<img src="https://user-images.githubusercontent.com/15983736/75922005-158f4580-5e5a-11ea-84d1-b80cffa8d964.png" alt="lastpass_logo" width="80" />

This can be done in `Manage extensions` in the browser settings.

----

### [Karabiner-Elements](https://pqrs.org/osx/karabiner/)

<img src="https://user-images.githubusercontent.com/15983736/75924486-f21ac980-5e5e-11ea-8c15-2a1282b39f44.png" alt="karabiner_elements" align="right" width="150" />

The only feature I use is remapping my `Caps-Lock` key to `Esc` when tapped and to `Ctrl` when held.

This can be set up by importing the `Change caps_lock key` modifier keys sample from [pqrs](https://pqrs.org/osx/karabiner/complex_modifications/)

Then:

+ inside the Karabiner elements app, go to the `Complex Modifications` tab.

+ click `add rule`.

+ enable the `Change caps_lock to control if pressed with other keys, to escape if pressed alone.` rule.

----

### [Rectangle](https://rectangleapp.com/)

<img src="https://user-images.githubusercontent.com/15983736/75923306-af57f200-5e5c-11ea-8f0e-cad5c1a9e1d5.png" alt="rectangle" align="right" width="150" />

In `Settings > Preferences` tick:
+ `Allow any keyboard shortcut`.
+ `Launch on login`.

These are the commands I use:

+ Fullscreen: `Cmd + alt  + p`.
+ Centre: `Cmd + alt + m`.
+ Left Half: `Cmd + alt + h`.
+ Right Half: `Cmd + alt + l`.
+ Top Half: `Cmd + alt + k`.
+ Bottom Half: `Cmd + alt + j`.
+ Next Display `Cmd + alt + n`.
+ Previous Display `Cmd + alt + N`.

----

### [Iterm2](https://iterm2.com/)

<img src="https://user-images.githubusercontent.com/15983736/75925915-753d1f00-5e61-11ea-8a5f-ca88114f0427.png" alt="iterm" align="right" width="150" />

In `Preferences > General`:
+ untick `Confirm closing multiple sessions`.
+ untick `Confirm Quit iTerm2`.

In `Preferences > Profiles > General > Working directory`:
+ tick: `Reuse previous session's directory`.

In `Preferences > Profiles > Window > Settings For New windows`:
+ set `columns: 500, Rows: 500` - for a full screen terminal window each session.

In `Preferences > Profiles > Terminal > Notifications`:
+ tick `Silence bell`.

----

### [Qbserve](https://qotoqot.com/qbserve/)

<img src="https://user-images.githubusercontent.com/15983736/75931634-6197b580-5e6d-11ea-93a6-ca5134fe1be9.png" alt="qbserve" align="right" width="150" />

Works so nicely out of the box, nothing to configure.

<br><br><br><br><br><br>

----

### [Freedom](https://freedom.to/)

<img src="https://user-images.githubusercontent.com/15983736/75931633-60ff1f00-5e6d-11ea-8a5e-9e14c87f6f39.png" alt="qbserve" align="right" width="150" />

I always operate in "Locked mode" with 13 hour, overlapping schedules.

For more info on getting set up, see: https://freedom.to/blog/freedom-101-faqs-answered/

<br><br><br>

----

### [Docker](https://www.docker.com/)

<img src="https://user-images.githubusercontent.com/15983736/75925917-75d5b580-5e61-11ea-83c8-2a241038e08a.png" align="right" width="150" />

Docker desktop can be downloaded from here: https://docs.docker.com/docker-for-mac/install/

You may have to log in to [`DockerHub`](https://hub.docker.com/) to perform the download.

<br><br><br>

----

### [Homebrew](https://brew.sh/)

<img src="https://user-images.githubusercontent.com/15983736/75926048-b3d2d980-5e61-11ea-9dbd-d9802a6ba132.png" align="right" width="150" />

Follow instructions found here: https://brew.sh

This is what I ran:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

These are some of the packages I'll always add:

```bash
brew install git grip fd macvim node python
```

----

### [Zsh](https://ohmyz.sh/)

<img src="https://user-images.githubusercontent.com/15983736/75923752-a3206480-5e5d-11ea-9460-e16190f6333c.jpg" alt="oh_my_zsh" align="right" width="150" />

The modern shell supported by an [awesome community](http://ohmyz.sh/).

I installed it with:

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

I have a custom theme and plugin, install them with:

```bash
curl -SLs https://raw.githubusercontent.com/samhstn/my-config/master/sams-theme.zsh-theme \
  > ~/.oh-my-zsh/themes/sams-theme.zsh-theme

mkdir ~/.oh-my-zsh/plugins/sams-config
curl -SLs https://raw.githubusercontent.com/samhstn/my-config/master/sams-config.plugin.zsh \
  > ~/.oh-my-zsh/plugins/sams-config/sams-config.plugin.zsh
```

I have my zshrc edited like so:

```zsh
ZSH_THEME="sams-theme"

...

plugins=(
  git
  sams-config
  vi-mode
)
```

----

### [Vim](https://www.vim.org/)


<img src="https://user-images.githubusercontent.com/15983736/75923905-ea0e5a00-5e5d-11ea-9235-5a0c273c0022.png" alt="vim" align="right" width="150" />

I use `MacVim` in the terminal, this can be installed with:

```bash
brew install macvim
```

Add my `.vimrc` with:

```bash
curl -SLs https://raw.githubusercontent.com/samhstn/my-config/master/.vimrc > ~/.vimrc
```

----

### [Sketch](https://www.sketch.com/)

<img src="https://user-images.githubusercontent.com/15983736/75929430-8178aa80-5e68-11ea-80d9-5981197832a6.png" alt="sketch" align="right" width="150" />

I don't really know what I'm doing in Sketch, but it's fun to play around with and build prototypes.

<br><br><br><br><br>

----

### Final tweaks

There are couple of additional setup steps:

```bash
# Create the `proj` directory where I put all my coding projects.
md proj

# See this medium article for git ssh setup:
# https://medium.com/@fredrikanderzon/setting-up-ssh-keys-for-multiple-bitbucket-github-accounts-a5244c28c0ac

# some git setup.
git config --global user.name <yourname>
git config --global user.email <your@email.com>

# global gitignore of `.DS_Store`.
echo ".DS_Store" > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# I always disable system pager for `git branch` command.
# for more info, see: https://stackoverflow.com/a/48370253
git config --global pager.branch false

# I use system pager if diff doesn't fit on terminal screen, otherwise output to stdout.
# for more info, see: https://stackoverflow.com/a/31399632/4699289
git config --global core.pager "less -FRSX"

# Install the `m` command line tool following instructions here:
# https://github.com/samhstn/m

# (optional) we may want to symlink the custom zsh theme and plugin when in development.
rm ~/.oh-my-zsh/plugins/sams-config/sams-config.plugin.zsh
rm ~/.oh-my-zsh/themes/sams-theme.zsh-theme
git clone git@github.com:samhstn/my-config.git
ln -s $PWD/my-config/sams-config.plugin.zsh $HOME/.oh-my-zsh/plugins/sams-config/sams-config.plugin.zsh
ln -s $PWD/my-config/sams-theme.zsh-theme $HOME/.oh-my-zsh/themes/sams-theme.zsh-theme
```

Now your set up with exactly my configuration!

If you think I have missed anything out, or should be doing something differently let me know in an [issue](https://github.com/samhstn/my-config/issues)
