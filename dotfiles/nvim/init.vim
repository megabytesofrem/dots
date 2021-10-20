" set some sane options
set nocompatible
set showmatch
set autoindent
set number
set expandtab

set shiftwidth=4
set cc=80

syntax on
filetype plugin indent on

" ESC is unergonomic, lets fix that!
imap jj <Esc>
imap kk <Esc>

call plug#begin("~/.vim/plugged")
    Plug 'nanotech/jellybeans.vim'
    Plug 'ryanoasis/vim-devicons'
    
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'Stoozy/vimcord'
    Plug 'tpope/vim-fugitive'
call plug#end()

" Hard mode
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
  exec 'noremap' key '<Nop>'
  exec 'inoremap' key '<Nop>'
  exec 'cnoremap' key '<Nop>'
endfor

colorscheme jellybeans
