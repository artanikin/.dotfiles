# Скорость скрытия Dock панели
defaults write com.apple.dock autohide-time-modifier -float 0.1; killall Dock

# Сохранение скриншотов в папку Downloads
defaults write com.apple.screencapture location ~/Downloads

# Запуск приложения от неавторизоавнных пользователей
sudo spctl --master-disable

# Press and Hold enabled for VSCode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
