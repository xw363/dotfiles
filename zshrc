# TODO: find out when is the following line used
# export TERM="xterm-256color"

# Set zsh theme manually
ZSH_THEME="agnoster"

# Set zsh plugins manually
plugins=(
  git
  vi-mode
)

# macOS-specific settings. Append at the end
# Note: copy conda init code if necessary
if [[ $OSTYPE =~ darwin* ]]; then 
    plugins+=(osx)

    # Set locale (TODO: see if necessary to make it global)
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8

    # Set path
    export PATH="/usr/local/sbin:$PATH"

    # Julia setup
    alias julia="/Applications/Julia-1.1.app/Contents/Resources/julia/bin/julia"

    # vi-mode cursor shapes in iTerm2
    if [[ -v TERM_PROGRAM && $TERM_PROGRAM == "iTerm.app" ]]; then
        function zle-keymap-select zle-line-init zle-line-finish {
            case $KEYMAP in
              vicmd)      print -n -- "\E]50;CursorShape=0\C-G";; # block cursor
              viins|main) print -n -- "\E]50;CursorShape=1\C-G";; # line cursor
            esac

            zle reset-prompt
            zle -R
        }

        zle -N zle-line-init
        zle -N zle-line-finish
        zle -N zle-keymap-select
    fi
fi

