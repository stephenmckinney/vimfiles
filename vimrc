" .vimrc - Basic settings

" ======================================================================
" Basic options
" ======================================================================

" Load plugins
if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif

" Basics
set encoding=utf-8
set shell=/bin/bash
set history=100 " keep 100 lines of command line history
set ttyfast
set showcmd   " display incomplete commands
set showmode  " display mode
set showmatch " jump back and forth to matching paran
set backspace=indent,eol,start " allow backspacing over everything in insert mode

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom and 15 lines on the left
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Indentation (Softtabs, 2 spaces): rb, html, css, js
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent " copy indent from current line when starting a new line
set nowrap " do not wrap long lines

" Escape quickly
set ttimeout
set ttimeoutlen=100

" Folding
set foldmethod=indent   " fold based on indent
set nofoldenable        " don't fold by default

" Backup / Undo
set backupdir=~/.vim/backup
set undodir=~/.vim/undo
set undofile
set undolevels=1000  " maximum number of changes that can be undone
set undoreload=10000 " maximum number lines to save for undo on a buffer reload
set noswapfile " OMG I can't take it anymore!

" No beeps
set noerrorbells visualbell t_vb=

" Always open vertical splits to the right and automatically make them the same size
set splitright
set equalalways

" Tab completion options in Command mode
set wildmode=list:longest,list:full
set wildmenu
" wildignore - A file that matches with one of these patterns is ignored when  completing file or directory names
" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,*.pyc,.git,.hg,*.rbc,*.rbo,*.class,.svn,*.gem
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Disable images
set wildignore+=*.gif,*.GIF,*.jpg,*.JPG,*.png,*.PNG,*.svg,*.SVG,*.pdf,*.PDF,*.psd,*.PSD
" Disable temp and backup files
set wildignore+=*.swp,*~,._*,.DS_Store
" Ignore bundler, sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
" Ignore Rails bin, db, log, script, temp, and public stuff
set wildignore+=bin/**,db/migrate/**,log/**,public/cache/**,public/sitemaps/**,public/stylesheets/**,public/system/**,script/**,tmp/**,vendor/**
" Ignore Node modules
set wildignore+=node_modules/**


" Use modeline overrides
set modeline
set modelines=10

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the 'must save first' error doesn't come up)
set hidden


" ======================================================================
" Search
" ======================================================================
set incsearch " do incremental searching
set hlsearch
set ignorecase
set smartcase


" ======================================================================
" UI
" ======================================================================
set ruler          " show the cursor position all the time
set number         " show line numbers
set numberwidth=4
set background=dark
colorscheme solarized
syntax enable " Turn on syntax highlighting allowing local overrides
set list listchars=tab:▸\ ,trail:· " Show tabs and trailing whitespace


" ======================================================================
" Status line
" ======================================================================
if has("statusline")
  set laststatus=2 " Always display the status bar
  set statusline=%t       "tail of the filename
  set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
  set statusline+=%{&ff}] "file format
  set statusline+=%h      "help file flag
  set statusline+=%y      "filetype
  set statusline+=%r      "read only flag
  set statusline+=%m      "modified flag
  set statusline+=%=      "left/right separator
  set statusline+=%l/%L   "cursor line/total lines
  set statusline+=\ %P    "percent through file
endif


" ======================================================================
" Ctags
" ======================================================================
"
" Fugitive will set tags=.git/tags. Until we stop using Fugitive let's roll
" with that.


" ======================================================================
" Beyond the basics
" ======================================================================
" Plugin configurations
if filereadable(expand("~/.vim/plugin_config.vim"))
  source ~/.vim/plugin_config.vim
endif

" Key mappings, functions, autocommands
if filereadable(expand("~/.vim/keymaps_etc.vim"))
  source ~/.vim/keymaps_etc.vim
endif

" Local vimrc
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

