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

"Eatchar function described in vimhelp
func! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

" keystroke shortcuts
" type: 'clog<tab>' to type console.log
iab <silent> clog console.log();<esc>hi<c-r>=Eatchar('\s')<cr>
iab hhtml <esc>:0r~/templates/index.html<enter>
iab hhapi <esc>:0r~/templates/hapi-server.js<enter>
iab sswitch switch () {<enter>case:<enter>default:<enter>}<esc>?()<Enter>a

" Move visually selected line text up, down, left and right
vnoremap <c-j> xPmqgvdmz'qPjV'zk
vnoremap <c-k> xPmqgv<esc>mz'qkdd'zPkV'q
" Move visually selected block up, down, left and right
vnoremap <c-right> xpgvlolo
vnoremap <c-left> xhPgvhoho
vnoremap <c-down> xjPgvjojo
vnoremap <c-up> xkPgvkoko
" be able to switch between tabs using ctrl and arrow keys
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" be able to move place of tab using alt and arrow keys
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

let mapleader="\<space>"

nnoremap <leader>d gDf'gfn
nnoremap <leader>s <c-o><c-o><c-o>zz

syntax on
