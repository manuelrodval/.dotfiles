# manuelrodval's config files
Config giles for WSL2. In case you intend to utilize these configurations, I suggest thoroughly reviewing the code and removing any unnecessary or undesirable stuff.
## Prerequisites:
- [Oh My Posh](https://ohmyposh.dev/)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [TMUX](https://github.com/tmux/tmux)
- [z-jump-around](https://github.com/rupa/z)

## Installation
Clone this repo wherever you want and run the install script.
```bash
./install.sh
```
This will create soft symlinks between this repository and your `$HOME/.config` folder.
For neovim run `:PackerSync` and for Tmux use the leader and install keybindings.
