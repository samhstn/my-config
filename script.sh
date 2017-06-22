echo "Installing shouston3's setup..."

export RAW_GH_URL="https://raw.githubusercontent.com/shouston3/my-config/master"

sed -i "" 's/.*plugins=(.*/plugins=(git sams-aliases vi-mode)/g' ~/.zshrc
sed -i "" 's/.*ZSH_THEME=.*/ZSH_THEME="sams-theme"/g' ~/.zshrc

if [ ! -d ~/.oh-my-zsh/plugins/sams-aliases ]; then
  mkdir ~/.oh-my-zsh/plugins/sams-aliases
fi
curl -sSL "$RAW_GH_URL/sams-aliases.plugin.zsh" > ~/.oh-my-zsh/plugins/sams-aliases/sams-aliases.plugin.zsh

curl -sSL "$RAW_GH_URL/sams-theme.zsh-theme" > ~/.oh-my-zsh/themes/sams-theme.zsh-theme

curl -sSL "$RAW_GH_URL/.vimrc" > ~/.vimrc

echo "Installed!"

