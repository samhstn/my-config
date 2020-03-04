syntax enable

set number ignorecase smartcase incsearch autoindent

" copy to system clipboard
set clipboard=unnamed

" we want to run inbuilt plugins
filetype plugin indent on

" improve filename completion, autocompletion and command completion
set wildmenu

" remove backups and swap files
set nobackup nowritebackup noswapfile

" tab key inserts 2 spaces
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" set en_gb spellings for spellcheck
set spelllang=en_gb

" map non-breaking space to normal space,
" see: https://github.com/samhstn/my-config/issues/84
inoremap   <space>

" key remappings
nnoremap Y y$
nnoremap ; :
vnoremap ; :
nnoremap , ;
vnoremap , ;
nnoremap q; q:
