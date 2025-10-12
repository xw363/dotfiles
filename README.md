# dotfiles
Personal configuration files for UNIX systems.

## Usage:
Clone this repository at home directory:
```bash
git clone https://github.com/xw363/dotfiles.git
```

Apply the following changes:
- bash: add `source ~/dotfiles/bashrc` to the last line of `~/.bashrc`
- zsh:
    - Install Oh My Zsh and Powerlevel10k if not already
    - For macOS: add `source ~/dotfiles/zshrc_macos` to the last line of
    `~/.zshrc`. Also modify the following lines in `~/.zshrc`:
    ```bash
    ZSH_THEME="powerlevel10k/powerlevel10k"
    plugins=(
        git
        vi-mode
        macos
    )
    ```
    For WSL Ubuntu: add `source ~/dotfiles/zshrc_ubuntu` to the last line of
    `~/.zshrc`. Also modify the following lines in `~/.zshrc`:
    ```bash
    ZSH_THEME="powerlevel10k/powerlevel10k"
    plugins=(
        git
        vi-mode
        ubuntu
    )
    ```

- VIM: add `source ~/dotfiles/vimrc` to the last line of `~/.vimrc`

Not in use currently:
- tmux: add `source ~/dotfiles/tmux.conf` to the last line of `~/.tmux.conf`

### For use on Windows Subsystem for Linux:
Add the following line to `~/.bashrc` and `~/.zshrc`:
```bash
export WSL=1
```
