" # Basic Settings
set nocompatible				" vim-specific settings, non-vi-compatible
set backspace=indent,eol,start 	" Allow backspace in insert mode
set number						" Line numbers
set hidden						" Allow hidden buffers
filetype plugin indent on		" Enable file type detection and do language-dependent indenting.
set history=100					" Default = 8
nnoremap ; :
set tabstop=4
set wrap						" Turn on word wrapping
set linebreak					" Only wrap at sensible places
set nolist						" list disables linebreak
set textwidth=0					" prevent Vim from automatically inserting line breaks
set wrapmargin=0
set formatoptions-=t			" Don't change wrapping on existing lines
set formatoptions+=l			" Black magic

" # Install Plugins
call plug#begin('~/.vim/plugged')
	" ## Themes
	Plug 'https://github.com/chriskempson/vim-tomorrow-theme'
	Plug 'vim-airline/vim-airline-themes'

	" ## Markdown
	Plug 'nelstrom/vim-markdown-folding'
	Plug 'tpope/vim-markdown'

	" ## Other Tools
	Plug 'https://github.com/sirtaj/vim-openscad'	" OpenSCAD syntax hilighting
	Plug 'vim-airline/vim-airline'					" Airline bar
	Plug 'scrooloose/syntastic'						" syntax info
	Plug 'Raimondi/delimitmate'						" smart completion of delimiters
call plug#end()

" # Plugin Settings
set laststatus=2		" Make airline status bar appear all the time
set foldenable			" Enable markdown folding

" Get rid of pointless Airline separators because I don't want to install a
" patched font to make them look right
let g:airline_left_sep=''
let g:airline_right_sep=''

" # Color Scheme
syntax on
syntax enable			" I have no idea what this actually does
set background=dark
set t_Co=256			" 256 colors, terrible for most themes, but best for Tomorrow-Night
colorscheme Tomorrow-Night
