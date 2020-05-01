" Enable blamer (:BlamerToggle to enable/disable)
let g:blamer_enabled = 0
" Delay for display blamer (Default: 1000)
let g:blamer_delay = 1500
" Dont show blamer in visual mode
let g:blamer_show_in_visual_modes = 0
" Blamer prefix (Default: ' ')
let g:blamer_prefix = '··············> '
" Info format
let g:blamer_template = '[<committer>] • <committer-time> • <summary>'
" Date format
let g:blamer_date_format = '%Y-%m-%d'
" Toggle blamer
nnoremap <leader>tb :BlamerToggle<cr>
