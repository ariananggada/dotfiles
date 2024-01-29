. "$HOME/.functionrc"
. "$HOME/.aliasrc"
# . "$HOME/.local.aliasrc"

# detect os platform
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     export OS=Linux;;
    Darwin*)    export OS=Darwin;;
    CYGWIN*)    export OS=Cygwin;;
    MINGW*)     export OS=MinGw;;
    OpenBSD*)   export OS=OpenBSD;;
    FreeBSD*)   export OS=FreeBSD;;
    *)          export OS="UNKNOWN:${unameOut}"
esac
# end detect os platform


# general setup
if [[ "${OS}" == "Linux" ]] || 
   [[ "${OS}" == "Darwin" ]] || 
   [[ "${OS}" == "OpenBSD" ]] || 
   [[ "${OS}" == "FreeBSD" ]]; then

  # if running bash
  if [ -n "$BASH_VERSION" ]; then
      # include .bashrc if it exists
      if [ -f "$HOME/.bashrc" ]; then
          . "$HOME/.bashrc"
      fi
  fi

  export PATH=$HOME/bin:$HOME/.local/bin:$PATH

  if [[ "${OS}" != "Darwin" ]]; then
    export LC_ALL=en_US.UTF-8  
    export LANG=en_US.UTF-8
  fi

  if command -v nvim &> /dev/null; then
    export EDITOR="nvim"
  else
    export EDITOR="vim"
  fi

  export READER="zathura"

  export XDG_CONFIG_HOME="$HOME/.config"
  export XDG_DATA_HOME="$HOME/.local/share"
  export XDG_CACHE_HOME="$HOME/.cache"


  if [[ "${OS}" != "Darwin" ]]; then
    # export TERMINAL=st
    export BROWSER=firefox
    if [[ "${OS}" == "Linux" ]]; then
      pidof -s dwm >/dev/null 2>&1 && export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
    fi

    # fix java apps in dwm
    export _JAVA_AWT_WM_NONREPARENTING=1    # Fix for Java applications in dwm
    export _JAVA_OPTIONS='-Dswing.aatext=TRUE -Dawt.useSystemAAFontSettings=on'
    export JAVA_HOME='/usr/lib/jvm/java-18-openjdk'
  fi

  # # zsh
  # export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

  # zsh
  export ZDOTDIR="$HOME"

  # cvs
  export CVSROOT=$HOME/cvsroot

  if command -v nvim &> /dev/null; then
    export CVSEDITOR=nvim
  else
    export CVSEDITOR=vim
  fi

  # vim
  export VIMCONFIG=$HOME/.vim

  # # macports
  # if ! command -v port &> /dev/null; then
  #   export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
  # fi

  # macports
  if command -v port &> /dev/null; then
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
  fi

  # rust
  if ! command -v cargo &> /dev/null; then
    . "$HOME/.cargo/env"
  fi

  # nodejs using fnm
  if command -v fnm &> /dev/null; then
    # export PATH=/home/ian/.fnm:$PATH
    eval "`fnm env`"
  fi

  # golang
  if [[ "${OS}" != "Darwin" ]]; then
    export PATH=$PATH:/usr/local/go/bin
    export GOPATH="$(go env GOPATH)"
    export GOBIN="$GOPATH/bin"
    export PATH="$PATH:$GOBIN"
  fi


  if [[ "${OS}" == "Darwin" ]]; then
    export GOPATH="$(go env GOPATH)"
    export GOBIN="$GOPATH/bin"
    export PATH="$PATH:$GOBIN"
  fi

  # java setup
  if [[ "${OS}" == "Darwin" ]]; then
    # jdk17
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk17/Contents/Home
  fi

  # doom emacs
  if [[ -d "$HOME/.emacs.d/bin" ]]; then
    export PATH="$PATH:$HOME/.emacs.d/bin"
  fi

  # show hidden dir
  if [[ "${OS}" == "Darwin" ]]; then
    alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
    alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
  fi

  # macports bin PATH
  if [[ "${OS}" == "Darwin" ]]; then
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH" 
  fi


fi

# fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

