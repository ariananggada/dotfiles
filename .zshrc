eval "$(starship init zsh)"
source /opt/local/share/fzf/shell/key-bindings.zsh
source /opt/local/share/fzf/shell/completion.zsh
source /opt/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U colors && colors
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
