" plugins.vim - List of plugins managed via vim-plug.
"
" NOTE to self: You chose vim-plug for it's lazy-loading, robust features,
"               and simple configuration. Don't bother researching
"               pathogen, vundle, or neobundle/dein.


" ======================================================================
" Start adding plugins
" ======================================================================
call plug#begin('~/.vim/plugins')


" ======================================================================
" Statusline - powerline
" ======================================================================

Plug 'Lokaltog/vim-powerline'
Plug 'git@github.com:stephenmckinney/vim-solarized-powerline.git'


" ======================================================================
" Search, Buffer, Tag, and File Navigation
" ======================================================================

" Ack
Plug 'mileszs/ack.vim'
" Ag
Plug 'rking/ag.vim'
" Abolish
Plug 'tpope/vim-abolish'
" Command-T
Plug 'wincent/Command-T'
" Ctrl-P
Plug 'kien/ctrlp.vim'
" FZF
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
" Nerdtree
Plug 'scrooloose/nerdtree'


" ======================================================================
" Omnicompletion, Snippets
" ======================================================================

" Ultisnips + my snippets
Plug 'SirVer/ultisnips' | Plug 'git@github.com:stephenmckinney/ultisnips-snippets.git'
" Supertab
Plug 'ervandew/supertab'


" ======================================================================
" Plugins that plug into default Vim behavior - Objects, Folding, etc.
" ======================================================================

" Add object - Indent Object - `ai`, `ii`
Plug 'michaeljsmith/vim-indent-object'
" Add object - Ruby Block Object - `ar`, `ir`
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock'
" Endwise - add `end` after if, do, def and several other keywords
Plug 'tpope/vim-endwise'
" Repeat - remaps `.` in a way that plugins can tap into it
Plug 'tpope/vim-repeat'
" Surround - adds 'surroundings' - `s`
Plug 'tpope/vim-surround'
" Visual mode '#/*' search
Plug 'nelstrom/vim-visual-star-search'
" Yank History
Plug 'maxbrunsfeld/vim-yankstack'


" ======================================================================
" Languages, File Types & Syntax Highlighting
" ======================================================================

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

" Syntastic
Plug 'scrooloose/syntastic'

" Ruby, ES6, JSX, Tmux provided by vim-polygot
Plug 'sheerun/vim-polyglot'

" Rails
Plug 'tpope/vim-rails'


" ======================================================================
" Tmux Integration
" ======================================================================

" Vim-Tmux integration
Plug 'benmills/vimux' | Plug 'jgdavey/vim-turbux'


" ======================================================================
" Misc Tools
" ======================================================================

" BufOnly
Plug 'vim-scripts/BufOnly.vim'
" Bundler - Lightweight goodies for Bundler
Plug 'tpope/vim-bundler'
" Cheat Sheet
" Plug 'cheat_sheet', {'type' : 'nosync'}
" Commentary - Comments using `gcc`, `gc*motion*`
Plug 'tpope/vim-commentary'
" Dash
Plug 'rizzatti/dash.vim'
" Git commands
Plug 'tpope/vim-fugitive'
" Gitlog browswer
Plug 'gregsexton/gitv'
" Git diff
Plug 'airblade/vim-gitgutter'
" Gist
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'
" Github - If fugitive.vim is the Git, rhubarb.vim is the Hub
" Sets up :Git to use hub if installed rather than git
Plug 'tpope/vim-rhubarb'
" Github PR review
Plug 'junkblocker/patchreview-vim' | Plug 'codegram/vim-codereview'
" Go
"Plug '/usr/local/Cellar/go/1.3.1/libexec/misc/vim', { 'type' : 'nosync' }
" Indent Guides
Plug 'nathanaelkane/vim-indent-guides'
" Marks
Plug 'xsunsmile/showmarks'
" Narrow Region
Plug 'chrisbra/NrrwRgn'
" QFixToggle
Plug 'Valloric/QFixToggle'
" Sugar for shell commands - Rename, Move, etc.
Plug 'tpope/vim-eunuch'
" Scratch buffer (useful for tSlime)
Plug 'vim-scripts/scratch.vim'
" System copy - sytem copy: `cp*motion*`, sytem paste: `cv`
Plug 'christoomey/vim-system-copy'
" Tabularize - Alignment
Plug 'godlygeek/tabular'
" ZoomWin
"Plug 'vim-scripts/ZoomWin'
Plug 'regedarek/ZoomWin'


" ======================================================================
" Themes
" ======================================================================

Plug 'git@github.com:stephenmckinney/vim-colors-solarized'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'wgibbs/vim-irblack'
Plug 'tpope/vim-vividchalk'


" =========================================
" Plugins I'm experimenting with
" =========================================
" ...


" ======================================================================
" Flip the on switch!
" * Add plugins to &runtimepath
" * filetype plugin indent on
" * syntax enable
" ======================================================================

call plug#end()




" ======================================================================
" Plugins I *was* experimenting with
" ======================================================================
" HTML speediness
" Plug 'bingaman/vim-sparkup'
"
" Docs
" Plug 'git@github.com:stephenmckinney/vim-dochub.git'
"
" Ruby/RSpec/Rails Docs
" Plug 'lucapette/vim-ruby-doc'
" Plug 'ecomba/vim-ruby-refactoring'
" Plug 'danchoi/ri.vim'


" ======================================================================
" Plugins I will try some day when I have time
" ======================================================================
" ...


" ======================================================================
" Plugins I Don't Like
" ======================================================================
"
" 'Shougo/neocomplcache' - woh! So slow, it was like using Eclipse.
" 'Shougo/neosnippet' - welp
" 'sjl/threesome.vim' AKA 'sjl/splice.vim' - kept crashing Vim
" 'tpope/vim-unimpaired' - RSI
" 'kien/rainbow_parentheses.vim' - Never worked right
" 'Lokaltog/vim-easymotion' - Vim has easy motions built-in
" 'nelstrom/vim-markdown-preview' - Not bad but Marked.app is better
" 'vim-scripts/YankRing.vim' - kept messing up my Vim macros
" 'tpope/vim-rake' - Causes errors when used with gitv. Maybe another time.
" 'vim-scripts/Rename2' - vim-eunich does SO much more
" 'majutsushi/tagbar' - meh, Ctrl-P has good tag navigation
" 'stephenmckinney/vim-autotag' - rather just do it by hand
" 'sjl/gundo.vim' - I just never use this shit
