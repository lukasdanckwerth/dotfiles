# dotfiles
![Icon](.files/documentation/icon.200.png "Icon")

## Installation

Cloning this repository to your home directory.

```shell script
$ alias h='env GIT_WORK_TREE=$HOME GIT_DIR=$HOME/.files.git'
$ h git init
$ h git remote add origin https://github.com/lukasdanckwerth/dotfiles.git
$ h git fetch
$ h git checkout master
```

Alternatively you can install **dotfiles** with this [script](https://raw.githubusercontent.com/lukasdanckwerth/dotfiles/master/.files/scripts/install.sh) via the following command. **Be careful** always validate a script before execution.

```shell
# long url
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lukasdanckwerth/dotfiles/master/.files/scripts/install.sh)"

# short url
/bin/bash -c "$(curl -fsSL https://tinyurl.com/dotfilesinstall)"
```

## Directory and File Structure

| Name    | About                                                        |
| ------- | ------------------------------------------------------------ |
| `bin/` |  |
| `commands/` | Contains command which can be invoked with the `dotfiles` command |
| `documentation/` | Contains the icon |
| `manuals/` | Contains manuals which can be listed with the `manuals` command |
| `scripts/` |  |
| `templates/` | Contains template files which are used by the `templates` command |
| `.aliases` | My aliases |
| `.environment` | Defines the dotfiles environment |
| `.files.sh` |  |
| `.gitignore` | Git ignore file for this directory |
| `.init` |  |
| `.profile` |  |



## Related files in `$HOME` directory

| Name            | About                                             |
| --------------- | ------------------------------------------------- |
| `.bash_profile` | Sources the `.files.sh` in the `.files` directory |
| `.bashrc`       | Softlink to `.bash_profile`                       |
| `.gitconfig`    | My git configuration                              |
| `.gitignore`    | Git ignore file for this project                  |
| `.vimrc`        | My vim configuration                              |
| `.zshrc`        | Sources the `.files.sh` in the `.files` directory |
| `README.md`     | This document                                     |



## `bin` files

| Name    | About                                                        |
| ------- | ------------------------------------------------------------ |
| dotfiles | Organize the `dotfiles` project. |
| manuals | List and read manuals from the `manuals` directory. |
| ... |  |

##  Environment variables

| Name                 | About                                                  |
| -------------------- | ------------------------------------------------------ |
| `$OS_NAME`           | Name of the operating system. Will be 'Darwin' on Mac. |
| `$SHELL_NAME`        | Name of the shell. [ `bash`, `zsh` ] |
| `$DOTFILES_REPO_URL` | Remote repository URL                                 |
| `$DOTFILES_LAST_PULL_PATH` | Path to file with timestamp of last update check |
| `$DOTFILES_LAST_PULL` | Holds the timestamp of the last update check |



## About `bash` config files

Interactive (non-login) shells read config from:

* `$HOME/.bashrc`

Login shells read config from:

* `/etc/profile` (Always sourced)

The rest of these files are checked in order until one is found, then no others are read

- `$HOME/.bash_profile`
- `$HOME/.bash_login`
- `$HOME/.profile`

