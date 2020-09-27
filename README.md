# DOTFILES

My dotfiles and a few simple scripts to put them in place. 

## Usage
* `./nn_setup_XY.sh`   -> configure XY
* `./runAll.sh` -> run everything

## What's installed

### `10_setup_zsh.sh`
* [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
* [powerlevel10k](https://github.com/romkatv/powerlevel10k)
* [fzf](https://github.com/junegunn/fzf)

### `20_setup_tmux.sh`
* [tpm](https://github.com/tmux-plugins/tpm)
    * [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
    * [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
    * [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)
    * [tmux-gruvbox](https://github.com/egel/tmux-gruvbox)
* After installation, use 'prefix+I' (capital 'i') to install tmux plugins.

### `30_setup_vim.sh`
* [pathogen](https://github.com/tpope/vim-pathogen)
    * [nerdtree](https://github.com/scrooloose/nerdtree.git)
    * [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin.git)
    * [vim-markdown](https://github.com/plasticboy/vim-markdown.git)
    * [gruvbox](https://github.com/morhetz/gruvbox.git)
    * [surround](https://tpope.io/vim/surround.git)

### `40_setup_git.sh`
* [git-completion](https://github.com/git/git/tree/master/contrib/completion)
* Run `git alias` to see configured aliases

### `50_setup_python.sh`
* [pyenv](https://github.com/pyenv/pyenv)
* Run `git alias` to see configured aliases
