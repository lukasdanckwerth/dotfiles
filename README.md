# dotfiles
my.files

![Icon](.files/documentation/icon.round.low.png "Icon")

## Installation

Cloning this repository to your home directory. **Note** that any existing files will be overriden.

```shell script
$ alias h="env GIT_WORK_TREE=$HOME GIT_DIR=$HOME/.files.git"
$ h git init
$ h git remote add origin https://github.com/lukasdanckwerth/dotfiles.git
$ h git fetch
$ h git checkout master
```

You may want to hide the `README.md` file.

```shell
$ chflags hidden $HOME/README.md
```

Alternatively you can install dofiles with a script via the following command. **Be careful** always validate a script before execution.

```shell
chflags hidden $HOME/README.md
```

## Directory and File Structure

| Name    | About                                                        |
| ------- | ------------------------------------------------------------ |
| .bashrc | Basically a softlink to the `.rc` file in the `.files` directory. |

