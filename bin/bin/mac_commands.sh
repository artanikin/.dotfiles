# Скорость скрытия Dock панели
defaults write com.apple.dock autohide-time-modifier -float 0.1

# Сохранение скриншотов в папку Downloads
defaults write com.apple.screencapture location ~/Downloads

# Запуск приложения от неавторизоавнных пользователей
sudo spctl --master-disable

# Press and Hold enabled for VSCode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Enable dragging with three finger drag
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"

# Do not display recent apps in the Dock
defaults write com.apple.dock "show-recents" -bool "true"

# Autohide the Dock when the mouse is out
defaults write com.apple.dock "autohide" -bool "true"

# Dock: Make it popup faster
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0o

###############################################################################
# Text Editing / Keyboards                                                    #
###############################################################################

# Disable smart quotes and smart dashes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

###############################################################################
# Commit it!                                                                  #
###############################################################################

killall Dock
killall Finder
