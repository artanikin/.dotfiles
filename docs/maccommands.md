
```bash
# Перетаскивание окон мышью зажав CMD + Ctrl. Нужно перезапустить сеанс
defaults write -g NSWindowShouldDragOnGesture -bool true # Включить
defaults delete -g NSWindowShouldDragOnGesture           # Отключить

# Уменьшить скорость появления Dock
defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock

# Make hidden apps Transparent
defaults write com.apple.Dock showhidden -bool TRUE && killall Dock

# Add Dock Spacer (paste for each spacer)
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}' && killall Dock

# Add Half-Height Dock Spacer (paste for each)
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}' && killall Dock

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
```
