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
set wildmenu "Better tab completion when looking for files in command mode
set noerrorbells "Quiet the bell
set history=500 " set how many lines vim has to remember
set foldcolumn=1 " Extra margin to the left

set tabstop=2 "show existing tab with 2 spaces width
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set expandtab " On pressing tab, insert 2 spaces

" Ridding of swp files
set nobackup
set nowritebackup
set noswapfile

" key remappings
nmap ; :
cmap Q q!
nnoremap D d$
nnoremap Y y$
nnoremap , ;
command Vrc e~/.vimrc

"Eatchar function described in vimhelp
func! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

" keystroke shortcut: type: 'clog<tab>' to type console.log
iab <silent> clog console.log();<esc>hi<c-r>=Eatchar('\s')<cr>

" Move visually selected line text up, down, left and right
vnoremap <c-j> xPmqgvdmz'qPjV'zk
vnoremap <c-k> xPmqgv<esc>mz'qkdd'zPkV'q
syntax on
