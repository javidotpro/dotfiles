# My Dotfiles 💻
These are my dotfiles that I use on my day to day with macOS 👍

![iTerm](https://raw.githubusercontent.com/javidotpro/dotfiles/master/iterm.png)

Contains:
  1. [System defaults](https://github.com/javidotpro/dotfiles/blob/master/macos/defaults.sh) and [Dock icons setup](https://github.com/javidotpro/dotfiles/blob/master/macos/dock.sh) 
  2. [Git config with aliases](https://github.com/javidotpro/dotfiles/blob/master/dots/.gitconfig), [Git global ignore](https://github.com/javidotpro/dotfiles/blob/master/dots/.gitignore_global)
  3. [Global aliases](https://github.com/javidotpro/dotfiles/blob/master/dots/.aliases) 
  4. `Inconsolata` font used in iTerm, `Roboto Mono` used in Sublime
  5. iTerm with settings, oh-my-zsh `wild-cherry` theme
  6. `ssh-manager` command to manage ssh config hosts and keys, including copy public keys to clipboard, transfer to server and more with autocomplete
  7. Packages / CLI (wget, openssl, git, python3, node, php71, php71-xdebug, composer, zsh, zsh-completions, unrar, dockutil, htop, iftop, tig, httpie, nmap, thefuck, yarn, webkit2png, sqlmap and tree)
  10. Applications (1password, alfred, keka, firefox, iterm, sublime text, atom, squel pro, cyberduck, filezilla, spotify)
  11. Homestead or Valet (installation script will ask you, leave empty for nothing, if homestead is selected virtualbox and vagrant will be installed via brew, if valet mysql will be installed)
  12. `dotfiles` binary to manage dotfiles functions with autocomplete
  
## Install

On fresh installation of MacOS:

    sudo softwareupdate -i -a
    xcode-select --install

Clone and install dotfiles:
  
    git clone https://gitea.javi.pro/javi/dotfiles.git
    cd ~/dotfiles
    cd ~/dotfiles/install
    chmod +wx install.sh
    chmod -R +wx ~/dotfiles/bin
    ./install.sh

What it configure
---------------

macOS tools:

* [Homebrew] for managing operating system libraries.

[Homebrew]: http://brew.sh/

Tools:

* [wget]: https://formulae.brew.sh/formula/wget#default package for retrieving files using HTTP, HTTPS, FTP and FTPS
* [OpenSSL] for Transport Layer Security (TLS)
* [Git] for version control
* [Python3] Python 3 programming lang
* [Node.js] Installs Node.js
* [PHP71/PHP71xdebug] PHP 7.1 programing lang with xdebug
* [composer] Package library for PHP
* [Zsh/zsh-completions] as your shell
* [unrar] To decompress rar files
* [dockutil] command line tool for managing dock items on Mac
* [htop] process manager
* [iftop] system tool for network connections
* [tig] text mode interface for git
* [httpie] modern command line HTTP client
* [nmap] network security scanner
* [thefuck] corrector for terminal commands
* [yarn] package manager for js
* [webkit2png] Python script that takes screenshots using webkit
* [sqlmap] pentesting for SQL
* [tree] display structure of folders on the terminal

Apps:

* [1password] password manager
* [alfred] search helper for mac
* [keka] to decompress/compress files
* [firefox] browser
* [iterm2] terminal
* [sublime-text] text editor
* [atom] text editor
* [squelpro] SQL database manager for the desktop
* [cyberduck] file manager for servers and S3
* [filezilla] ftp/ssh client
* [spotify] music streaming

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
