# my vimfiles

Configures Vim with a focus on Ruby and Rails development
and testing. Solarized **ALL** the things.

These are my personal vimfiles, but it is also a good starting point for
anyone interested in tmux + zsh + vim as a Ruby and Rails IDE on OS X. See
[dotfiles](https://github.com/stephenmckinney/dotfiles) for more.

## Install

### Install Requirements and Dependencies on Mac OS X

Install [Homebrew](http://mxcl.github.com/homebrew/), then:

    rvm use system
    brew install vim macvim the_silver_searcher ctags

> **Wat?** Homebrew'd Vim hates Ruby 1.9 on OS X without a certain patch
> see [issue](https://github.com/mxcl/homebrew/issues/15902).

### Install Vimfiles and Plugins

    git clone git://github.com/stephenmckinney/vimfiles ~/.vimfiles
    cd ~/.vimfiles && rake install

## Stay Updated

    vim +NeoBundleUpdate +q

## Requirements and Dependencies

These are all installed by following the steps above.

### Brews

* [Vim](http://www.vim.org/) or [MacVim](https://github.com/b4winckler/macvim) 7.3 or greater
* [Silver Searcher](https://github.com/ggreer/the_silver_searcher) is required for [Ack.vim](https://github.com/mileszs/ack.vim)
* [Exuberant Ctags](http://ctags.sourceforge.net/) is required for [Tagbar](http://majutsushi.github.com/tagbar/)

### Vim Plugins

* [NeoBundle.vim](https://github.com/Shougo/neobundle.vim) to manage [a laundry list of Vim plugins](https://github.com/stephenmckinney/vimfiles/blob/master/vim/plugin.vim)
* My own Vim plugins and forks:
    * [Solarized Vim theme](https://github.com/stephenmckinney/vim-colors-solarized) with opinionatedly better support for Ruby, Omnicompletion, ShowMarks, Command-T, and CtrlP
    * [Solarized Powerline theme](https://github.com/stephenmckinney/vim-solarized-powerline) to bring Solarized to the statusbar
    * [dochub.vim](https://github.com/stephenmckinney/vim-dochub) for HTML, CSS, JavaScript, jQuery, and PHP documentation 
    * [ultisnips-snippets](https://github.com/stephenmckinney/ultisnips-snippets) for Textmate-like snippets that focus on Ruby, Rails, and RSpec & friends

## Moar

Go dumpster diving for more Vim goodness:

* [tpope's dotfiles](https://github.com/tpope/tpope)
* [garybernhardt dotfiles](https://github.com/garybernhardt/dotfiles)
* [sjl dotfiles](https://github.com/sjl/dotfiles)
* [spf13 vim](https://github.com/spf13/spf13-vim)
* [zastie vimified](https://github.com/zaiste/vimified)
* [astrails dotvim](https://github.com/astrails/dotvim)
* [skwp dotfiles](https://github.com/skwp/dotfiles)
* [carlhuda janus](https://github.com/carlhuda/janus)

## TODO

* Test vimfiles on Linux.
