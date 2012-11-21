# my vimfiles

Configures vim...for use at home and on the road.

## Install

    git clone git://github.com/stephenmckinney/vimfiles ~/.vimfiles
    cd ~/.vimfiles
    rake install

To install Vim plugins, open Vim and run `:NeoBundleInstall`.

### Install Requirements and Dependencies on Mac OS X

Install [Homebrew](http://mxcl.github.com/homebrew/), then:

    brew install vim ack ctags

#### Aside: A Nice Vim-Emacs Hack

[Remap Caps Lock to act like Control and ESC](http://www.quora.com/How-can-I-remap-Caps-Lock-in-Mac-OS-X-so-that-it-acts-like-Control-in-Emacs-but-acts-like-Escape-in-Vim)

## Stay Updated

Open Vim and run `:NeoBundleUpdate`

## Requirements and Dependencies

These are installed by following the above.

### Required

* [Vim](http://www.vim.org/) or [MacVim](https://github.com/b4winckler/macvim) 7.3 or greater

### Optional

* [Ack](http://betterthangrep.com/) is required for [Ack.vim](https://github.com/mileszs/ack.vim)
* [Exuberant Ctags](http://ctags.sourceforge.net/) is required for [Tagbar](http://majutsushi.github.com/tagbar/)

## Makes Use Of

* [NeoBundle](https://github.com/Shougo/neobundle.vim) to manage plugins
* Many [other Vim plugins](https://github.com/stephenmckinney/vimfiles/blob/master/vim/plugin.vim),
  including my [snipmate-snippets](https://github.com/stephenmckinney/snipmate-snippets), my [fork of Solarized Vim theme](https://github.com/stephenmckinney/vim-colors-solarized)
  and [dochub.vim](https://github.com/stephenmckinney/vim-dochub)

## Moar

Go dumpster diving for more Vim-goodies:

* https://github.com/sjl/dotfiles
* https://github.com/garybernhardt/dotfiles
* https://github.com/astrails/dotvim
* https://github.com/spf13/spf13-vim
* https://github.com/zaiste/vimified
* https://github.com/skwp/dotfiles
* https://github.com/carlhuda/janus

## TODO
* Add vim cheatsheet.
* Test vimfiles on Linux.
