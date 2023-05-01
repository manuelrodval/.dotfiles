# Oh my Posh config
eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/custom-theme.omp.json)"

# Start Folder
cd ~

# Tmux Source
if [ -z "$TMUX" ]; then
	tmux attach -t default || tmux new -s default
fi

tmux source-file ~/.config/tmux/.tmux.conf

# Z.sh
. ~/.zsh/z.sh

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias p="cd ~/projects"
alias l="ls -lF"
alias cl="clear"

# Programs
alias g="git"
alias vim="nvim"

# Functions
function mkd() {
	mkdir -p "$@" && cd "$_";
}
