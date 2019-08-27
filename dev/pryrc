# frozen_string_literal: true

# vim: ft=ruby

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
  Pry.commands.alias_command 'u', 'up'
  Pry.commands.alias_command 'd', 'down'
else
  warn "can't load pry-byebug"
end
