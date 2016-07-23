" should be default configs
set nocompatible
set ttyfast
set number
set autoread
set ignorecase
set smartcase
set autoindent
syntax enable 
set background=dark
set clipboard=unnamed

filetype off "required for vundle


set noerrorbells "Quiet the bell

set tabstop=2 "show existing tab with 2 spaces width
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set expandtab " On pressing tab, insert 2 spaces

" Ridding of swp files
set nobackup
set nowritebackup
set noswapfile

set history=500 " set how many lines vim has to remember

set foldcolumn=1 " Extra margin to the left

" key remappings
nmap ; :
cmap Q q!
" Del to the end of the line
nnoremap D d$
" Yank to the end of the line
nnoremap Y y$
nnoremap << :vertical resize -10<CR>
nnoremap >> :vertical resize +10<CR>

" Plugins
source $HOME/.vim/plugins.vim " Only syntastic
source $HOME/.vim/syntastic.vim " Config for syntastic

