# Скорость скрытия Dock панели
defaults write com.apple.dock autohide-time-modifier -float 0.1; killall Dock

# Запуск приложения от неавторизоавнных пользователей
sudo spctl --master-disable
