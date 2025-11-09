# dotfiles
Personal configuration files for terminal environments on MacOS and Linux.

## Usage
Clone this repository at home directory:
```bash
git clone https://github.com/xw363/dotfiles.git
```

Complete the following setup:
- bash: append `source ~/dotfiles/bashrc` to the end of `~/.bashrc`
- zsh:
  - Make sure Oh My Zsh and Powerlevel10k are installed
  - In `~/.p10k.zsh`, locate and update `POWERLEVEL9K_VI_INSERT_MODE_STRING` to
    ```bash
    typeset -g POWERLEVEL9K_VI_INSERT_MODE_STRING=INSERT
    ```
  - For macOS: append `source ~/dotfiles/zshrc_macos` to the end of
    `~/.zshrc`. Locate and update `ZSH_THEME` and `plugins` in `~/.zshrc` to
    ```bash
    ZSH_THEME="powerlevel10k/powerlevel10k"
    plugins=(
        git
        vi-mode
        macos
    )
    ```
  - For WSL Ubuntu: append `source ~/dotfiles/zshrc_ubuntu` to the end of
    `~/.zshrc`. Locate and update `ZSH_THEME` and `plugins` in `~/.zshrc` to
    ```bash
    ZSH_THEME="powerlevel10k/powerlevel10k"
    plugins=(
        git
        vi-mode
        ubuntu
    )
    ```
- VIM: append `source ~/dotfiles/vimrc` to the end of `~/.vimrc`

### For use on Windows Subsystem for Linux:
Append the following to `~/.bashrc` and `~/.zshrc`:
```bash
export WSL=1
```
