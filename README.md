# My Dev setup

### Useful OSX setup commands
defaults write -g ApplePressAndHoldEnabled -bool false
  - stop popup of accented keys
defaults write com.apple.finder AppleShowAllFiles TRUE
  - See hidden files in finder window

### Applications to download
Karabiner - for faster key repeat and key remappings
Seil - for remapping caps lock key
Spectacles for easier arranging of your page

##### Karabiner config
Faster key repeat

Delay until repeat: 150

Key repeat: 20

----

Map caps lock to escape key and ctrl key

Karabiner:
  Tick `Control_L` to `Control_L` (+ when you type Con… send Escape)

Seil:
  Map caps lock to left ctrl key

##### Specticle config
ctrl + alt + cmd + p (full page) - Fullscreen

ctrl + alt + cmd + m (middle) - Centre

### To set up my dotfiles run:

Clone the repo `git clone https://github.com/shouston3/My-Config.git && cd My-Config`

run the setup: `source setup.sh`

Then open a new terminal window to see your new setup
