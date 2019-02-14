# How to setup a new Mac for local development

> More like, how to setup my opinionated tooling

### Tools used

- Terminal - [iTerm2](https://iterm2.com/)
- Zsh Framework - [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
  - Robby Russell - [Themes](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)
- Terminal Multiplexer - [tmux](https://github.com/tmux/tmux)
- Package Manager for Package Managers - [asdf](http://asdf-vm.com/)
- IDE - [Doom Emacs](https://github.com/hlissner/doom-emacs)
  - Custom private [module](https://github.com/arielo/spacemacs_module_for_doom) to get [Spacemacs](https://github.com/syl20bnr/spacemacs) like key-bindings on Doom Emacs 
- Nord Theme - [Nord](https://www.nordtheme.com/)
  - Color preset for iTerm2 [Nord-Theme](https://github.com/arcticicestudio/nord-iterm2)

### Installation

- Install Xcode (using App Store)
  - Alternatively use ruby gem [xcode-install](https://github.com/xcpretty/xcode-install) for managing multiple version of Xcode
- Install [Homebrew](https://brew.sh/)
- Checkout this Repo

```shell
git clone https://github.com/arielo/dotfiles.git ~/git/dotfiles
```

- Install Brewfile

```shell
cd ~/git/dotfiles
brew bundle
```

- Update Git sub modules

```shell
cd ~/git/dotfiles
git submodule init
git submodule update
```

- Symlink all configs and restart terminal 
```shell
cd ~/git/dotfiles
./link.sh
```

- Install tmux plugins

```shell
tmux new-session -t dotfiles
Ctrl-a I
```

- Doom Emacs sync and update

```shell
➜  dotfiles git:(master) ~/.emacs.d/bin/doom sync
> Executing 'doom sync' with Emacs 27.2 at 2022-03-18 12:18:53
  > Compiling your literate config...
    - Tangled 0 code blocks from config.org
    - Restarting...
  > Synchronizing your config with Doom Emacs...
    > Regenerating envvars file at "~/.emacs.d/.local/env"
      ✓ Successfully generated "~/.emacs.d/.local/env"
    > Installing packages...
      - No packages need to be installed
    > (Re)building packages...
      - No packages need rebuilding
    > Purging orphaned packages (for the emperor)...
      - No builds to purge
      - Skipping elpa packages
      - Skipping repos
      - Skipping regrafting
    > (Re)generating autoloads file...
      > Generating autoloads file...
      > Byte-compiling autoloads file...
      ✓ Generated .local/autoloads.27.2.elc
    - Restart Emacs or use 'M-x doom/reload' for changes to take effect
  ✓ Finished in 4.1568s
```


### Check for leaked secrets before committing 

```shell
➜  dotfiles git:(master) gitleaks detect -v

    ○
    │╲
    │ ○
    ○ ░
    ░    gitleaks

12:08PM INF no leaks found
12:08PM INF scan completed in 283.723371ms
```

## Author

👤 **Ariel Zavala**

* Github: [@arielo](https://github.com/arielo)

