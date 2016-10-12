" # Basic Settings
set nocompatible		" vim-specific settings, non-vi-compatible
set backspace=indent,eol,start 	" Allow backspace in insert mode
set number			" Line numbers
set hidden			" Allow hidden buffers
filetype plugin indent on	" Enable file type detection and do language-dependent indenting.
set history=100			" Default = 8 
nnoremap ; :

" # Install Plugins
call plug#begin('~/.vim/plugged')
	" ## Themes
	Plug 'altercation/vim-colors-solarized'
	Plug 'chriskempson/base16-vim'
	Plug 'https://github.com/chriskempson/vim-tomorrow-theme'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'nelstrom/vim-markdown-folding'
	Plug 'tpope/vim-markdown'

	Plug 'vim-airline/vim-airline'	" Airline bar
	Plug 'scrooloose/syntastic'	" syntax info
	Plug 'Raimondi/delimitmate'	" smart completion of delimiters
call plug#end()

set laststatus=2		" Make airline status bar appear all the time

" # Color Scheme
syntax on
syntax enable			" I have no idea what this actually does
set background=dark
set t_Co=256			" 256 colors, terrible for most themes, but best for Tomorrow-Night
colo Tomorrow-Night
