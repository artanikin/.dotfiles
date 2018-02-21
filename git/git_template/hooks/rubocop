#!/usr/bin/env ruby

ADDED_OR_MODIFIED = /^\s*(A|AM|M)/.freeze

changed_files = `git status --porcelain`.split(/\n/)
unstaged_files = `git ls-files -m`.split(/\n/)

changed_files = changed_files.select { |f| f =~ ADDED_OR_MODIFIED }
changed_files = changed_files.map { |f| f.split(" ")[1] }

changed_files -= (unstaged_files - changed_files)

changed_files = changed_files.select { |file_name| File.extname(file_name) == ".rb" }
changed_files = changed_files.join(" ")

exit(0) if changed_files.empty?

success = system(%(
  rubocop #{changed_files}
))

STDIN.reopen('/dev/tty')

if success == false
  puts "Would you like to continue press 'any key' or 'n/N' to halt? "
  exit(1) if %w(N n).include?(gets.chomp)
end
