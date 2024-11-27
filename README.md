# Linux Environment

This repository contains aliases and configurations for ZSH and [Oh My ZSH](https://github.com/ohmyzsh/ohmyzsh). It allows a centralized location for configuring my personal command line environment along with helpful commands and aliases. The `setup.sh` will install oh my zsh and a couple plugins and source the configuration files with the `.zshrc` file.

## Dependencies
 - [zsh](https://www.zsh.org/)
 - [git](https://git-scm.com/)

## Helpful Commands
- `alias` will show all of the available aliases
- `docker_run` will perform docker run but with added flags like `--rm=True -u $(id -u):$(id -g) -v $(pwd):/data`
- `pkg_update_report` will display downloaded packages, note: this is set to run each shell by default
- `check_password_age` will display password age if over 75 days old, note: this is set to run each shell by default