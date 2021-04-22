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
set colorcolumn=80,120
highlight ColorColumn ctermbg=grey guibg=grey

"Load pathogen
"execute pathogen#infect('~/.vim/bundle/{}')
execute pathogen#infect()
execute pathogen#helptags()

"Colors!
syntax enable
filetype plugin indent on

"Fix tabs and indentation
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Fix search
set showmatch
set incsearch
set hlsearch
set ignorecase
nnoremap <leader><space> :nohlsearch<CR>

"Enable fzf
set rtp+=~/.fzf

" Show invisible characters
set listchars=tab:>-,trail:·
set list

" Sane line joins
if v:version > 703 || v:version == 703 && has('patch541')
    set formatoptions+=j
endif

" Install lightline
"  git clone https://github.com/itchyny/lightline.vim
"  ~/.vim/bundle/lightline.vim
set noshowmode
"let g:lightline = { 'colorscheme': 'wombat' }
autocmd VimEnter * redraw

" Cursor settings
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set ttimeout
set ttimeoutlen=1
set ttyfast

" Disable blinking
autocmd GUIEnter * set vb t_vb= " for your GUI
autocmd VimEnter * set vb t_vb=

" Enable selection highlighting
:highlight Visual cterm=reverse ctermbg=NONE

