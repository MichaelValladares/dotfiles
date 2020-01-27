# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sspace/.oh-my-zsh"
ZSH_THEME="random"

#sspace config for bash shell

#set prompt
autoload -U colors && colors

#PROMPT='[%n@%m %~]$'
PS1="%{$fg[black]%}[%{$fg[green]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[magenta]%}%~%{$fg[black]%}]%{$fg[black]%}$ %{$reset_color%}"

#custom scripts in bin
export PATH=$PATH:/Users/sspace/bin

#appears for every new terminal window
printf '\e[A\e[K\e[A\e[K'
neofetch

#custom commands
alias q="exit"
alias cl="clear"
alias viv="open -a vivaldi && printf '\e[A\e[K'"
alias spotify="open -a spotify && printf '\e[A\e[K'"
alias finder="open -a finder && printf '\e[A\e[K'"
alias discord="open -a discord && printf '\e[A\e[K'"
alias root="cd /"
alias home="cd ~"
alias rrc="source ~/.zshrc"
alias erc="vi ~/.zshrc"
alias enf="vi ~/.config/neofetch/config.conf"
alias organ="say --progress -v 'pipe organ'"
alias cello="say --progress -v 'cellos'"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

#command changes
cd() {
    builtin cd "$@" && ls
}
plugins=(osx)
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
