# My Dotfiles
These are my dotfiles that I use on my day to day with macOS :-)

![iTerm](https://raw.github.com/javielico/dotfiles/master/iterm.png)

Contains:
  1. [System defaults](https://github.com/javielico/dotfiles/blob/master/macos/defaults.sh) and [Dock icons setup](https://github.com/javielico/dotfiles/blob/master/macos/dock.sh) 
  2. [Git config with aliases](https://github.com/javielico/dotfiles/blob/master/dots/.gitconfig), [Git global ignore](https://github.com/javielico/dotfiles/blob/master/dots/.gitignore_global)
  3. [Global aliases](https://github.com/javielico/dotfiles/blob/master/dots/.aliases) 
  4. `Inconsolata` font used in iTerm, `Roboto Mono` used in Sublime
  5. iTerm with settings, oh-my-zsh `wild-cherry` theme
  6. `ssh-manager` command to manage ssh config hosts and keys, including copy public keys to clipboard, transfer to server and more with autocomplete
  7. Packages / CLI (wget, openssl, git, python3, node, php71, php71-xdebug, composer, zsh, zsh-completions, unrar, dockutil, htop, iftop, tig, httpie, nmap, thefuck, yarn, webkit2png, sqlmap and tree)
  10. Applications (1password, alfred, keka, firefox, chrome, opera, iterm, sublime text, atom, visual studio code, squel pro, cyberduck, filezilla, spotify, skype)
  11. Homestead or Valet (installation script will ask you, leave empty for nothing, if homestead is selected virtualbox and vagrant will be installed via brew, if valet mysql will be installed)
  12. `dotfiles` binary to manage dotfiles functions with autocomplete
  
## Install

On fresh installation of MacOS:

    sudo softwareupdate -i -a
    xcode-select --install

Clone and install dotfiles:
	
    git clone https://github.com/javielico/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    cd ~/dotfiles/install
    chmod +wx install.sh
    chmod -R +wx ~/dotfiles/bin
    ./install.sh

## Additional steps

1. Install fonts
2. Import iTerm settings
3. `sudo reboot`
4. Enjoy

## The `dotfiles` command

    $ dotfiles
    ￫ Usage: dotfiles <command>

    Commands:
       help             This help message
       update           Update packages and pkg managers (OS, brew, npm, yarn, commposer)
       clean            Clean up caches (brew, npm, yarn, composer)
       symlinks         Run symlinks script
       brew             Run brew script
       homestead        Run homestead script
       valet            Run valet script
       ohmyzsh          Run oh my zsh script
       hosts            Run hosts script
       defaults         Run MacOS defaults script
       dock             Run MacOS dock script

## The `ssh-manager` command

    $ ssh-manager
    ￫ Usage: ssh-manager <command>

    Commands:
       help             This help message
       list             List of all SSH keys and hosts in SSH config
       list-keys        List of all SSH keys
       copy             Copy public SSH key
       new              Generate new SSH key
       host             Add host to SSH config, use --key to generate new key
       remove           Remove host from SSH config
       list-host        List of all hosts in SSH config
