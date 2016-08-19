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
" nnoremap <C-y> <C-z>
nnoremap << :vertical resize -10<cr>
nnoremap >> :vertical resize +10<cr>
nnoremap , ;
command Vrc e~/.vimrc

" Plugins
source $HOME/.vim/plugins.vim " Only syntastic
source $HOME/.vim/syntastic.vim " Config for syntastic

"Eatchar function described in vimhelp
func! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

" keystroke shortcuts
iab <silent> log console.log('');<esc>hhi<c-r>=Eatchar('\s')<cr>
iab html <esc>:0r~/templates/index.html<enter>
iab hapi <esc>:0r~/templates/hapi-server.js<enter>
iab switch switch () {<enter>case:<enter>default:<enter>}<esc>?()<Enter>a

" Find ctags file
set tags=tags;/

" Move visually selected line text up, down, left and right
vnoremap <c-j> xPmqgvdmz'qPjV'zk
vnoremap <c-k> xPmqgv<esc>mz'qkdd'zPkV'q
" Move visually selected block up, down, left and right
vnoremap <c-right> xpgvlolo
vnoremap <c-left> xhPgvhoho
vnoremap <c-down> xjPgvjojo
vnoremap <c-up> xkPgvkoko
