" should be default configs
set nocompatible ttyfast number autoread ignorecase smartcase autoindent wildmenu noerrorbells
set clipboard=unnamed history=500
set foldcolumn=1 " Extra margin to the left
set nobackup nowritebackup noswapfile " Ridding of swp files
set incsearch " Jumps to word as you type
set mouse=a " Allowing for clicking around
filetype plugin on

let mapleader="\<space>"
let tab_spacing=2 " I default to using a 2 tab indent

let &tabstop=tab_spacing " tab key inserts 2 spaces
let &shiftwidth=tab_spacing " < and > move text by 2 spaces
set expandtab " On pressing tab, insert spaces not tabs

" key remappings
nmap ; :
vmap ; :
nnoremap D d$
nnoremap Y y$
nnoremap , ;
vnoremap , ;

" Eatchar function described in vimhelp
func! Eatchar(pat)
  let c=nr2char(getchar(0))
  return (c=~a:pat) ? '' : c
endfunc

" keystroke shortcut: type: 'clog<tab>' to type console.log
iab <silent> clog console.log();<esc>hi<c-r>=Eatchar('\s')<cr>

func! SetTabs(tablength)
  echo "Tab set to ".a:tablength
  let &l:tabstop=a:tablength
  let &l:shiftwidth=a:tablength
endfunc

" Change tab spacing to 2 or 4
nnoremap <leader>4 :call SetTabs(4)<cr>
nnoremap <leader>2 :call SetTabs(2)<cr>
" Copy visually selected lines to system clipboard
vnoremap <leader>y :w !pbcopy<cr><cr>
" Shortcuts for ':set paste' and ':set nopaste'
nnoremap <leader>p :set paste<cr>
nnoremap <leader>n :set nopaste<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>m :set mouse=<cr>

execute pathogen#infect()

syntax enable 
syntax on

