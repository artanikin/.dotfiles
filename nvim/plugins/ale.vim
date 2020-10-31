let g:ale_enables = 1
let g:ale_completion_enabled = 1
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['standardrb', 'rubocop', 'brakeman', 'rails_best_practices'],
\   'vue': ['eslint', 'vls'],
\   'json': ['jsonlint'],
\   'markdown': ['mdl', 'writegood'],
\   'vim': ['vimls']
\}

let g:ale_ruby_rubocop_executable = '/Users/artyomanikin/.rbenv/shims/bundle exec rubocop'
let g:ale_ruby_standardrb_executable = '/Users/artyomanikin/.rbenv/shims/standardrb'
let g:ale_ruby_brakeman_executable = '/Users/artyomanikin/.rbenv/shims/brakeman'
let g:ale_ruby_rails_best_practices_executable = '/Users/artyomanikin/.rbenv/shims/rails_best_practices'
let g:ale_sign_error = '🚫  '
let g:ale_sign_warning = '✋  '
highlight ALEErrorSign ctermbg = NONE ctermfg=red
highlight ALEWarningSign ctermbg = NONE ctermfg=yellow
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
