## Usage:
Clone this repository at home directory:
```bash
git clone https://github.com/xw363/dotfiles.git
```

Then do the following:
- bash: add `source ~/dotfiles/bashrc` to the last line of `~/.bashrc`
- tmux: add `source ~/dotfiles/tmux.conf` to the last line of `~/.tmux.conf`
- VIM: add `source ~/dotfiles/vimrc` to the last line of `~/.vimrc`
- zsh: modify `~/.zshrc` using `zshrc`

### For use on Windows Subsystem for Linux:
Add the following line to `~/.bashrc` and `~/.zshrc`:
```bash
export WSL=1
```
