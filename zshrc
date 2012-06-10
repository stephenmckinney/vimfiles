#
# Sets Oh My Zsh options.
#
# This file is sourced by interactive shells. It should define aliases,
# functions, shell options, and key bindings.
#
# This is the main Oh My Zsh configuration file.
#
# Authors:
#   Steve McKinney <stevemckinney@gmail.com>
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:module:editor' keymap 'emacs'

# Auto convert .... to ../..
zstyle ':omz:module:editor' dot-expansion 'yes'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:module:terminal' auto-title 'no'

# Set the Zsh modules to load (man zshmodules).
# zstyle ':omz:load' zmodule 'attr' 'stat'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':omz:load' zfunction 'zargs' 'zmv'

# Set the Oh My Zsh modules to load (browse modules).
# Core: 'environment' 'terminal' 'editor' 'completion' 'history' 'directory' 'spectrum' 'alias' 'utility' 'prompt'
# Note:
#       * 'gnu-utility' must be loaded before 'alias'
#       * 'completion' must be loaded after 'alias' but before the 'utility'
zstyle ':omz:load' omodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'gnu-utility' \
  'alias' \
  'completion' \
  'utility' \
  'archive' \
  'osx' \
  'git' \
  'ruby' \
  'rails' \
  'python' \
  'fasd' \
  'syntax-highlighting' \
  'history-substring-search' \
  'prompt'

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:module:prompt' theme 'poorlilrichboy'

# This will make you shout: OH MY ZSHELL!
source "$OMZ/init.zsh"


#################################################
# Customize to your needs...
#
# OMZ handles the following concerns re $PATH:
#   * PATH for Homebrew (module/environment)
#   * PATH for Homebrew'd Python's `install-scripts` (module/python)
#   * PATH for RVM (module/ruby)
#
#################################################

# Don't beep!
unsetopt beep

# The 'ls' family overrides.
alias l='ls -lh'         # List human readable sizes.
alias ll='ls -1A'        # List in one column.
alias lr='l -R'          # List recursively.
alias la='l -A'          # List hidden files.
alias lp='la | "$PAGER"' # List through pager.
alias lx='l -XB'         # List sorted by extension.
alias lk='l -Sr'         # List sorted by size, largest last.
alias lt='l -tr'         # List sorted by date, most recent last.
alias lc='lt -c'         # List sorted by date, most recent last, show change time.
alias lu='lt -u'         # List sorted by date, most recent last, show access time.
alias sl='ls'            # I often screw this up.

# List files after changing directories
function chpwd { l }

# Use vim
# Git
alias g='git'

alias vi='vim'

# Edit dotfiles
alias edots='vim ~/.dotfiles'

# Memcached
alias memcachedstart='memcached -p 11211 &'

# MySQL
alias mysqlstart='/usr/local/Cellar/mysql/5.5.19/bin/mysqld_safe &'
alias mysqlstop='/usr/local/Cellar/mysql/5.5.19/bin/mysqladmin -u root -p shutdown'

# Postgresql
alias postgresstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start &'
alias postgresstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# Use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

