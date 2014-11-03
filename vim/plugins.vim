" plugin.vim - List of plugins to manage via NeoBundle

" ======================================================================
" Loads plugins via NeoBundle
" ======================================================================
if !1 | finish | endif

if has('vim_starting')
  " Use Vim settings, rather then Vi settings (much better!).
  " This must be first, because it changes other options as a side effect.
  set nocompatible

  " Required
  set runtimepath+=~/.vim/plugins/neobundle.vim/
endif
" Required
call neobundle#begin(expand('~/.vim/plugins/'))
" Required
NeoBundleFetch 'Shougo/neobundle.vim'


" ======================================================================
" Statusline - powerline
" ======================================================================

NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'git@github.com:stephenmckinney/vim-solarized-powerline.git'

" ======================================================================
" Search, Buffer, Tag, and File Navigation
" ======================================================================

" Ack
NeoBundle 'mileszs/ack.vim'
" Ag
NeoBundle 'rking/ag.vim'
" Abolish
NeoBundle 'tpope/vim-abolish'
" Autotag
"NeoBundle 'stephenmckinney/vim-autotag'
" Command-T
NeoBundle 'wincent/Command-T'
" Ctrl-P
NeoBundle 'kien/ctrlp.vim'
" Nerdtree
NeoBundle 'scrooloose/nerdtree'


" ======================================================================
" Omnicompletion, Snippets
" ======================================================================

" Ultisnips
NeoBundle 'SirVer/ultisnips'
" Ultisnips Snippets
NeoBundle 'git@github.com:stephenmckinney/ultisnips-snippets.git'
" Supertab
NeoBundle 'ervandew/supertab'


" ======================================================================
" Tmux Integration
" ======================================================================

" Vim-Tmux integration
NeoBundle 'jgdavey/vim-turbux', { 'depends' : [
    \ 'benmills/vimux',
    \ ]}


" ======================================================================
" Plugins that plug into default Vim behavior - Objects, Folding, etc.
" ======================================================================

" Add object - Indent Object
NeoBundle 'michaeljsmith/vim-indent-object'
" Add object - Ruby Block Object
NeoBundle 'nelstrom/vim-textobj-rubyblock', { 'depends' : [
    \ 'kana/vim-textobj-user',
    \ ]}
" Endwise - add `end` after if, do, def and several other keywords
NeoBundle 'tpope/vim-endwise'
" Markdown Folding
NeoBundle 'nelstrom/vim-markdown-folding'
" Matchit - allows % to match more than just single characters
NeoBundle 'edsono/vim-matchit'
" Repeat - remaps `.` in a way that plugins can tap into it
NeoBundle 'tpope/vim-repeat'
" Visual mode '*' search
NeoBundle 'nelstrom/vim-visual-star-search'
" Yank History
NeoBundle 'maxbrunsfeld/vim-yankstack'


" ======================================================================
" Misc Tools
" ======================================================================

" BufOnly
NeoBundle 'vim-scripts/BufOnly.vim'
" Bundler - Lightweight goodies for Bundler
NeoBundle 'tpope/vim-bundler'
" Cheat Sheet
NeoBundle 'cheat_sheet', {'type' : 'nosync'}
" Dash
NeoBundle 'rizzatti/dash.vim'
" Git commands
NeoBundle 'tpope/vim-fugitive'
" Gitlog browswer
NeoBundle 'gregsexton/gitv'
" Git diff
NeoBundle 'airblade/vim-gitgutter'
" Gundo
NeoBundle 'sjl/gundo.vim'
" Gist
NeoBundle 'mattn/gist-vim', { 'depends' : [
    \ 'mattn/webapi-vim',
    \ ]}
" Go
"NeoBundle '/usr/local/Cellar/go/1.3.1/libexec/misc/vim', { 'type' : 'nosync' }
" Indent Guides
NeoBundle 'nathanaelkane/vim-indent-guides'
" Marks
NeoBundle 'xsunsmile/showmarks'
" Narrow Region
NeoBundle 'chrisbra/NrrwRgn'
" Nerdcommenter
NeoBundle 'ddollar/nerdcommenter'
" QFixToggle
NeoBundle 'Valloric/QFixToggle'
" Sugar for shell commands - Rename, Move, etc.
NeoBundle 'tpope/vim-eunuch'
" Scratch buffer (useful for tSlime)
NeoBundle 'vim-scripts/scratch.vim'
" Surround
NeoBundle 'tpope/vim-surround'
" Tabularize - Alignment
NeoBundle "godlygeek/tabular"
" ZoomWin
"NeoBundle 'vim-scripts/ZoomWin'
NeoBundle 'regedarek/ZoomWin'


" =========================================
" **Tools I am experimenting with**
" =========================================

" HTML speediness
"NeoBundle 'bingaman/vim-sparkup'
" Docs
"NeoBundle 'git@github.com:stephenmckinney/vim-dochub.git'
" Ruby/RSpec/Rails Docs
"NeoBundle 'lucapette/vim-ruby-doc'
"NeoBundle 'ecomba/vim-ruby-refactoring'
"NeoBundle 'danchoi/ri.vim'


" ======================================================================
" Languages & Syntax Highlighting
" ======================================================================

" Syntastic
NeoBundle 'scrooloose/syntastic'

" Capybara
NeoBundle 'asux/vim-capybara'
" CoffeeScript
NeoBundle 'kchmck/vim-coffee-script'
" Cucumber
NeoBundle 'tpope/vim-cucumber'
" Git
NeoBundle 'tpope/vim-git'
" Haml
NeoBundle 'tpope/vim-haml'
" Handlebarsjs/Mustache
NeoBundle 'mustache/vim-mustache-handlebars'
" JavaScript
NeoBundle 'pangloss/vim-javascript'
" JQuery
NeoBundle 'itspriddle/vim-jquery'
" Less
NeoBundle 'groenewege/vim-less'
" Markdown
NeoBundle 'tpope/vim-markdown'
" MiniTest
NeoBundle 'sunaku/vim-ruby-minitest'
" Puppet
NeoBundle 'ajf/puppet-vim'
" Rails
NeoBundle 'tpope/vim-rails'
" Rspec
NeoBundle 'skwp/vim-rspec'
" Ruby
NeoBundle 'vim-ruby/vim-ruby'
" SCSS
NeoBundle 'cakebaker/scss-syntax.vim'
" Shoulda
NeoBundle 'tsaleh/vim-shoulda'
" Textile
NeoBundle 'timcharper/textile.vim'
" Tmux
NeoBundle 'zaiste/tmux.vim'


" ======================================================================
" Themes
" ======================================================================

NeoBundle 'git@github.com:stephenmckinney/vim-colors-solarized'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'wgibbs/vim-irblack'
NeoBundle 'tpope/vim-vividchalk'


" ======================================================================
" Flip the on switch!
" ======================================================================

call neobundle#end()
" Required
" Load the filetype detection, plugin, and indent settings
filetype plugin indent on

" Check installation
NeoBundleCheck


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
" 'tpope/vim-rhubarb' - maybe when it has more features
" 'vim-scripts/Rename2' - vim-eunich does SO much more
" 'majutsushi/tagbar' - meh, Ctrl-P has good tag navigation
"
"
"
" ======================================================================
" Plugins I will try some day when I have time
" ======================================================================
"
" Nada

