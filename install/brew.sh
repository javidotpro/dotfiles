# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew tap homebrew/php
brew update
brew upgrade

# Install packages
brew install wget
brew install openssl
brew install git
brew install python3
brew install node
brew install homebrew/php/php71
brew install php71-xdebug
brew install composer
brew install zsh
brew install zsh-completions
brew install unrar
brew install dockutil
brew install htop
brew install iftop
brew install tig
brew install httpie
brew install nmap
brew install thefuck
brew install yarn
brew install webkit2png
brew install sqlmap
brew install tree

# One second...
sleep 1

# ...and then.
echo "Happy Days! Basic brew packages are now installed."

# Cask
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install cask packages

brew cask install --appdir="/Applications" 1password
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" keka
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" opera
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" cyberduck
brew cask install --appdir="/Applications" filezilla
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" skype


# Quick Look Plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook qlvideo

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Happy days! Additional applications are installed."

if [ "$softwareToInstall" -eq 1 ] ; then
	brew install mysql

	# Wait a bit before moving on...
	sleep 1

	# ...and then.
	echo "Success! MySQL installed ready to install valet."
else 
	if [ "$softwareToInstall" -eq 2 ] ; then
	    brew cask install --appdir="/Applications" virtualbox
		brew cask install --appdir="/Applications" vagrant

		# Wait a bit before moving on...
		sleep 1

		# ...and then.
		echo "Success! VirtualBox, Vagrant installed ready to install homestead."
	fi
fi