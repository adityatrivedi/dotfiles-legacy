"*****************
" Vim runcom file
" http://aditya.io
" ~./vimrc
"*****************

set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]

set background=dark

"" Syntax
syntax enable                   " Enable syntax highlighting
filetype plugin indent on       " Detect filetype and load indent file for specific filetype
set showmatch                   " Highlight matching braces

"" View
set encoding=utf-8              " Set encoding to UTF-8
set showcmd                     " Display incomplete commands
set number                      " Show line numbers
set ruler                       " Show the current row and column
set linespace=4                 " Set line widths
set scrolloff=3                 " Keep lines visible
" set visualbell                  " Flash instead of beeping

"" Wrapping
set linebreak                   " Wrap only at word boundaries
set showbreak=↪                 " Use character to indicate wrapped lines
set colorcolumn=+1              " Highlight the column after `textwidth`
" Set column highlight colour to black
highlight ColorColumn ctermbg=black guibg=black

"" Whitespace
set list                        " Show invisibles, display tabs as '▸   ', trailing spaces as '•', and eol as '¬'
set listchars=tab:▸\ ,trail:•,eol:¬
set tabstop=2                   " Set literal tab width and display
set softtabstop=2               " Set tab width for insertion and <BS>
set shiftwidth=2                " Set CTRL-T, > (add indent) & CTRL-D, < (remove indent) widths
set expandtab                   " Ensure tabs are expanded to spaces
set shiftround                  " Round indents to multiples of shiftwidth
set autoindent                  " Enable autoindentation for new lines to match indent level of previous line
set smartindent               " Automatically indent lines after opening braces
set cindent                   " Enable indenting for C-style source code (including C++ and Java)
set backspace=indent,eol,start  " Backspace through everything in insert mode

"" Searching
set hlsearch                    " Highlight search terms...
set incsearch                   " ...dynamically as they are typed
set ignorecase                  " Ignore case when searching...
set smartcase                   " ...except when at least one uppercase letter is included

