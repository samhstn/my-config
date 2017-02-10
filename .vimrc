" should be default configs
set nocompatible
set ttyfast
set number
set autoread
set ignorecase
set smartcase
set autoindent
set clipboard=unnamed
set wildmenu " Better tab completion when looking for files in command mode
set noerrorbells
set history=500
set foldcolumn=1 " Extra margin to the left
set nobackup " Ridding of swp files
set nowritebackup " ^
set noswapfile " ^
syntax enable 
syntax on

let mapleader = "\<space>"
let tab_spacing = 2 " I default to using a 2 tab indent

let &tabstop = tab_spacing " tab key inserts 2 spaces
let &shiftwidth = tab_spacing " < and > move text by 2 spaces
set expandtab " On pressing tab, insert spaces not tabs

" Jumps to word as you type
set incsearch

" key remappings
nmap ; :
vmap ; :
cmap Q q!
nnoremap D d$
nnoremap Y y$
nnoremap , ;
vnoremap , ;
nnoremap > >>
nnoremap < <<

" Eatchar function described in vimhelp
func! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

" keystroke shortcut: type: 'clog<tab>' to type console.log
iab <silent> clog console.log();<esc>hi<c-r>=Eatchar('\s')<cr>

func! SetTabs(tablength)
  echo "Tab set to " . a:tablength
  let &l:tabstop = a:tablength
  let &l:shiftwidth = a:tablength
endfunc

" Change tab spacing to 2 or 4
nnoremap <leader>4 :call SetTabs(4)<cr>
nnoremap <leader>2 :call SetTabs(2)<cr>
" Copy visually selected lines to system clipboard
vnoremap <leader>y :w !pbcopy<CR><CR>
" Shortcuts for ':set paste' and ':set nopaste'
nnoremap <leader>p :set paste<CR>
nnoremap <leader>n :set nopaste<CR>

