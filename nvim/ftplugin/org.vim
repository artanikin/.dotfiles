set textwidth=80

let g:org_aggressive_conceal = 1
let g:org_indent = 1
let g:org_todo_keywords = [['TODO', 'WAITING', '|', 'DONE'], ['|', 'CANCELED']]
let g:org_todo_keyword_faces = [['WAITING', 'cyan'],
      \ ['CANCELED', [':foreground red', ':background black', ':weight bold', ':slant italic', ':decoration underline']]]
