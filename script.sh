echo "Installing shouston3's setup..."

if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc.old
fi

if [ -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc.old
fi

export RAW_GH_URL="https://raw.githubusercontent.com/shouston3/my-config/master"

sed -i "" 's/.*plugins=(.*/plugins=(git sams-aliases vi-mode)/g' ~/.zshrc
sed -i "" 's/.*ZSH_THEME=.*/ZSH_THEME="sams-theme"/g' ~/.zshrc

if [ ! -d ~/.oh-my-zsh/plugins/sams-aliases ]; then
  mkdir ~/.oh-my-zsh/plugins/sams-aliases
fi
curl -SLso "$RAW_GH_URL/sams-aliases.plugin.zsh" ~/.oh-my-zsh/plugins/sams-aliases/sams-aliases.plugin.zsh

curl -SLso "$RAW_GH_URL/sams-theme.zsh-theme" ~/.oh-my-zsh/themes/sams-theme.zsh-theme

curl -SLso "$RAW_GH_URL/.vimrc" ~/.vimrc

# Setup vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
# elm.vim
git clone https://github.com/lambdatoast/elm.vim.git ~/.vim/bundle/elm.vim
# vim-elixir
git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir
# vim-javascript
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
# vim-repeat
git clone git://github.com/tpope/vim-repeat.git ~/.vim/bundle/vim-repeat
# vim-surround
git clone git://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround

echo "Installed!"

echo "If you already had a .vimrc or .zshrc, they have been renamed to .vimrc.old and .zshrc.old"

