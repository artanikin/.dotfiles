# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Packages
brew install git
brew install macvim
brew install neovim
brew install zsh-syntax-highlighting
brew install hub

brew linkapps


# Get Homebrew-Cask
brew tap caskroom/cask

# Install apps
brew cask install google-chrome
brew cask install vlc
brew cask install spectacle # Window manager
brew cask install punto-switcher # Autoswitcher language
brew cask install yandexdisk # Yandex Cloud
brew cask install utorrent
brew cask install phinze/cask/telegram
brew cask install skype
brew cask install slack
brew cask install itrem2
brew install battery

## Database
brew install sqlite3
brew install postgresql
brew services start postgresql

brew cask install dbeaver-community # DB GUI client
brew install pgcli # PosgreSQL CLI client
