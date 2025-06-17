PS1='%F{blue}%B%~%b%f %F{green}❯%f '

eval "$(starship init zsh)"
source /opt/local/share/fzf/shell/key-bindings.zsh
source /opt/local/share/fzf/shell/completion.zsh
source /opt/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init zsh)"

autoload -U colors && colors

autoload -U compinit; compinit
source ~/.local/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

if [ -f "$HOME/.profile" ]; then
  . "$HOME/.profile"
fi

if [ -f "$HOME/.zprofile" ]; then
  . "$HOME/.zprofile"
fi

if [ -f "$HOME/.aliasrc" ]; then
  . "$HOME/.aliasrc"
fi

if [ -f "$HOME/.functionrc" ]; then
  . "$HOME/.functionrc"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fnm
FNM_PATH="/Users/arian/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/arian/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
