" ======================================================================
" Loads plugins via NeoBundle
" ======================================================================

filetype plugin indent off     " required

if has('vim_starting')
 set runtimepath+=~/.vim/bundle/neobundle.vim/
 call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim' " required


" ======================================================================
" Search, Buffer, File Navigation
" ======================================================================

" Ack
NeoBundle 'mileszs/ack.vim'
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
    \ 'jgdavey/tslime.vim',
    \ ]}


" ======================================================================
" Plugins that plug into default Vim behavior - Objects, Folding, etc.
" ======================================================================

" Indent Object
NeoBundle 'michaeljsmith/vim-indent-object'
" Endwise - add `end` after if, do, def and several other keywords
NeoBundle 'tpope/vim-endwise'
" Markdown Folding
NeoBundle 'nelstrom/vim-markdown-folding'
" Matchit - allows % to match more than just single characters
NeoBundle 'edsono/vim-matchit'
" Repeat- remaps `.` in a way that plugins can tap into it
NeoBundle 'tpope/vim-repeat'
" Ruby Block Object
NeoBundle 'nelstrom/vim-textobj-rubyblock', { 'depends' : [
    \ 'kana/vim-textobj-user',
    \ ]}
" Yank History
NeoBundle 'vim-scripts/YankRing.vim'


" ======================================================================
" Misc Tools
" ======================================================================

" BufOnly
NeoBundle 'vim-scripts/BufOnly.vim'
" Cheat Sheet
NeoBundle 'cheat_sheet', {'type' : 'nosync'}
" Git commands
NeoBundle 'tpope/vim-fugitive'
" Github integration
NeoBundle 'tpope/vim-rhubarb'
" Gitlog browswer
NeoBundle 'gregsexton/gitv'
" Gundo
NeoBundle 'sjl/gundo.vim'
" Gist
NeoBundle 'mattn/gist-vim', { 'depends' : [
    \ 'mattn/webapi-vim',
    \ ]}
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
" Rename
NeoBundle 'vim-scripts/Rename2'
" Scratch buffer (useful for tSlime)
NeoBundle 'vim-scripts/scratch.vim'
" Surround
NeoBundle 'tpope/vim-surround'
" Tabularize
NeoBundle "godlygeek/tabular"
" Tagbar
NeoBundle 'majutsushi/tagbar'
" ZoomWin
NeoBundle 'vim-scripts/ZoomWin'


" =========================================
" **Tools I am experimenting with**
" =========================================

" Sparkup
NeoBundle 'bingaman/vim-sparkup'
" Docs
NeoBundle 'git@github.com:stephenmckinney/vim-dochub.git'
" Ruby/RSpec/Rails Docs
NeoBundle 'lucapette/vim-ruby-doc'
NeoBundle 'ecomba/vim-ruby-refactoring'
NeoBundle 'danchoi/ri.vim'
NeoBundle 'nelstrom/vim-markdown-preview'


" ======================================================================
" Languages & Syntax
" ======================================================================

" Syntastic
NeoBundle 'scrooloose/syntastic'

" Bundler
NeoBundle 'tpope/vim-bundler'
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
" RVM
NeoBundle 'tpope/vim-rvm'
" SCSS
NeoBundle 'cakebaker/scss-syntax.vim'
" Shoulda
NeoBundle 'tsaleh/vim-shoulda'
" Textile
NeoBundle 'timcharper/textile.vim'


" ======================================================================
" Powerline
" ======================================================================
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'git@github.com:stephenmckinney/vim-solarized-powerline.git'


" ======================================================================
" Themes
" ======================================================================

NeoBundle 'git@github.com:stephenmckinney/vim-colors-solarized'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'wgibbs/vim-irblack'
NeoBundle 'tpope/vim-vividchalk'
NeoBundle 'vim-scripts/Color-Sampler-Pack'


" ======================================================================
" Tried and didn't like
" ======================================================================
"
" 'Shougo/neocomplcache.git' - woh! So slow, it was like using Eclipse.
" 'Shougo/neosnippet.git' - welp
" 'sjl/threesome.vim' AKA 'sjl/splice.vim' - kept crashing Vim
" 'tpope/vim-unimpaired' - RSI
" 'kien/rainbow_parentheses.vim' - Never worked right
" 'Lokaltog/vim-easymotion' - Vim has easy motions built-in
"
"
" ======================================================================
" Will try some day when I have time
" ======================================================================
"
