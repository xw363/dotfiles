# Switch to ZSH shell
export WSL=1
if test -t 1; then
    exec zsh
fi
