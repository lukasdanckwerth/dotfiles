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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lukasdanckwerth/dotfiles/master/.files/scripts/install.sh)"
```

## Directory and File Structure

| Name    | About                                                        |
| ------- | ------------------------------------------------------------ |
| .bashrc | Basically a softlink to the `.rc` file in the `.files` directory. |
| .zshrc | Basically a softlink to the `.rc` file in the `.files` directory. |
| [commands](https://github.com/lukasdanckwerth/dotfiles/tree/master/.files/commands) | Commands that can be invoked with `dotfiles`. |

## `bin` files

| Name    | About                                                        |
| ------- | ------------------------------------------------------------ |
| dotfiles | Organize the `dotfiles` project. |
| manuals | List and read manuals from the `manuals` directory. |

