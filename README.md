# My config files

Config is managed by [chezmoi](https://www.chezmoi.io/).

## Add to new machine

1. Initialize chezmoi from dotfiles on github

    > $ chezmoi init https://github.com/$GITHUB\_USERNAME/dotfiles.git

2. Check what changes that chezmoi will do when applied

    > $ Outputs changes that will be applied

3. Apply changes

    > $ chezmoi apply -v
    
## Helpful commands

**Pull changes from repository and apply them in a single command**

> $ chezmoi update -v

**Set up new machine with single commands**

> $ chezmoi init --apply https://github.com/$GITHUB\_USERNAME/dotfiles.git 

**Display full list of commands**

> $ chezmoi help

