# my vimfiles

Configures vim...for use at home and on the road.

## Install

### Install Requirements and Dependencies on Mac OS X

Install [Homebrew](http://mxcl.github.com/homebrew/), then:

    rvm use system
    brew install vim macvim ack ctags

> **Wat?** Homebrew'd Vim hates Ruby 1.9 on OS X without a certain patch
> see [issue](https://github.com/mxcl/homebrew/issues/15902).

### Install Vimfiles and Plugins

    git clone git://github.com/stephenmckinney/vimfiles ~/.vimfiles
    cd ~/.vimfiles
    rake install
    vim +NeoBundleInstall +q

> **Preventing RSI:**
> You should really [Remap Caps Lock to act like Control and ESC](http://www.quora.com/How-can-I-remap-Caps-Lock-in-Mac-OS-X-so-that-it-acts-like-Control-in-Emacs-but-acts-like-Escape-in-Vim).
> You'll thank me later.

## Stay Updated

    vim +NeoBundleUpdate +q

## Requirements and Dependencies

These are all installed by following the steps above.

### Brews

* [Vim](http://www.vim.org/) or [MacVim](https://github.com/b4winckler/macvim) 7.3 or greater
* [Ack](http://betterthangrep.com/) is required for [Ack.vim](https://github.com/mileszs/ack.vim)
* [Exuberant Ctags](http://ctags.sourceforge.net/) is required for [Tagbar](http://majutsushi.github.com/tagbar/)

### Vim Plugins

* [NeoBundle](https://github.com/Shougo/neobundle.vim) to manage plugins
* [A laundry list of Vim plugins](https://github.com/stephenmckinney/vimfiles/blob/master/vim/plugin.vim), including my own plugins and forks:
    * [Solarized Vim theme](https://github.com/stephenmckinney/vim-colors-solarized) with opinionatedly better support for Ruby, Omnicompletion, ShowMarks, Command-T, and CtrlP
    * [Solarized Powerline theme](https://github.com/stephenmckinney/vim-solarized-powerline) to bring Solarized to the statusbar
    * [dochub.vim](https://github.com/stephenmckinney/vim-dochub) for HTML, CSS, JavaScript, jQuery, and PHP documentation 
    * [ultisnips-snippets](https://github.com/stephenmckinney/ultisnips-snippets) for Textmate-like snippets that focus on Ruby, Rails, and RSpec & friends

## Moar

Go dumpster diving for more Vim-goodies:

* [garybernhardt dotfiles](https://github.com/garybernhardt/dotfiles)
* [sjl dotfiles](https://github.com/sjl/dotfiles)
* [spf13 vim](https://github.com/spf13/spf13-vim)
* [zastie vimified](https://github.com/zaiste/vimified)
* [astrails dotvim](https://github.com/astrails/dotvim)
* [skwp dotfiles](https://github.com/skwp/dotfiles)
* [carlhuda janus](https://github.com/carlhuda/janus)

## TODO
* Test vimfiles on Linux.
