"General
set nocompatible
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set laststatus=2                "Always display the status line
set hidden                      "Hide buffer instead of closing it
set pastetoggle=<F2>            "Paste without being smart
set cursorline
set wildmenu                    "Autocomplete on TAB
set lazyredraw

"Load pathogen
"execute pathogen#infect('~/.vim/bundle/{}')
call pathogen#infect()
call pathogen#helptags()

"Colors!
syntax enable
filetype plugin indent on
colorscheme sprinkles

"Fix tabs and indentation
set autoindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set expandtab

"Fix search
set showmatch
set incsearch
set hlsearch
set ignorecase
nnoremap <leader><space> :nohlsearch<CR>
"turn off search highlight

"Enable fzf
set rtp+=~/.fzf
