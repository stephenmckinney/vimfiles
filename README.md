# my vimfiles

Configures Vim with a focus on Ruby and Rails development
and testing. Solarized **ALL** the things.

These are my personal vimfiles, but it is also a good starting point for
anyone interested in tmux + zsh + vim as a Ruby and Rails IDE on OS X. See
[dotfiles](https://github.com/stephenmckinney/dotfiles) for more.

## Install

### Install Requirements and Dependencies on Mac OS X

Install [Homebrew](http://mxcl.github.com/homebrew/), then:

    brew install python3 ack the_silver_searcher ctags
    rbenv shell system
    brew install vim --with-custom-ruby

> **Wat?** Vim will dynamically link to Ruby, so let's use system Ruby.

### Install Vimfiles and Plugins

    git clone git@github.com:stephenmckinney/vimfiles.git
    cd ~/.vimfiles && rake install

Follow install instructions for vim-plug and plugins: https://github.com/junegunn/vim-plug.

### Compile Command-T

    rbenv shell system
    cd ~/.vim/plugins/Command-T/ruby/command-t && ruby extconf.rb && make

## Stay Updated

Follow update instructions for vim-plug and plugins: https://github.com/junegunn/vim-plug.

## Ctags

Just do this:

    gem install gem-ctags
    ctags --tag-relative -Rf.git/tags --exclude=.git --exclude=log --exclude=public/cache --exclude=public/stylesheets --exclude=tmp && gem ctags

Fugitve will set `tags` to `.git/tags` and all will work well.

## Requirements and Dependencies

### Vim Plugins

*The below are installed by following the steps in the [Install](#install) section.*

* [NeoBundle.vim](https://github.com/Shougo/neobundle.vim) to manage [a laundry list of Vim plugins](https://github.com/stephenmckinney/vimfiles/blob/master/vim/plugin.vim)
* My own Vim plugins and forks:
    * [Solarized Vim theme](https://github.com/stephenmckinney/vim-colors-solarized) with opinionatedly better support for Ruby, Omnicompletion, ShowMarks, Command-T, and CtrlP
    * [Solarized Powerline theme](https://github.com/stephenmckinney/vim-solarized-powerline) to bring Solarized to the statusbar
    * [dochub.vim](https://github.com/stephenmckinney/vim-dochub) for HTML, CSS, JavaScript, jQuery, and PHP documentation 
    * [ultisnips-snippets](https://github.com/stephenmckinney/ultisnips-snippets) for Textmate-like snippets that focus on Ruby, Rails, and RSpec & friends

#### ri/rdoc Documentation

ri docs are required for [ri.vim](https://github.com/danchoi/ri.vim).

In order to conserve space, RVM does not automatically generate and
install each Ruby's ri / rdoc documentation.

Provided you have not cleaned up the extracted sources for all currently
installed Rubies by executing 'rvm cleanup all' then you can install the
docs for **all** currently installed Rubies by executing:

    rvm all do rvm docs generate all

See [RVM docs](https://rvm.io/rubies/docs) for further details.

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

* rbenv support in vim-powerline
* Test vimfiles on Linux.
