local opt = vim.opt

vim.cmd('set iskeyword+=-')                 --Treat dash separated words as a word text object"
vim.cmd('set shortmess+=c')                 --Don't pass messages to |ins-completion-menu|.
vim.cmd('set whichwrap+=<,>,[,],h,l')
vim.o.pumheight=15                          --Makes popup menu smaller
vim.o.fileencoding="utf-8"                  --The encoding written to file
vim.o.termguicolors=true
vim.o.conceallevel=0                        --So that I can see `` in markdown files

vim.bo.expandtab=true                       --Converts tabs to spaces
vim.bo.smartindent=true                     --Makes indenting smart
-- vim.wo.cursorline=false                      --Enable highlighting of the current line
vim.o.showtabline=1                         --Always show tabs 0: never, 1: if at least two, 2: always
vim.o.backup=false
vim.o.writebackup=false
vim.wo.signcolumn="yes"  -- number                   --Always show the signcolumn, otherwise it would shift the text each time
vim.o.timeoutlen=600                        --By default timeoutlen is 1000 ms

vim.o.laststatus=3

vim.bo.textwidth=100
vim.o.background='dark'

vim.cmd([[
" Maintain undo history between sessions
set undofile
set undodir=/var/tmp,/tmp

" List of directories for the backup file
set backupdir=/var/tmp,/tmp

" Autoresize window
autocmd VimResized * wincmd =
]])


opt.equalalways = true
--[[ opt.list = true ]]
--[[ opt.listchars:append("eol:↲") ]]
--[[ opt.listchars:append("tab:  ") ]]
--[[ opt.listchars:append("trail:·") ]]
--[[ opt.listchars:append("nbsp:␣") ]]
--[[ opt.listchars:append("space:⋅") ]]
vim.opt.listchars = {
  --[[ space = ".", ]]
  eol = "↲",
  nbsp = "␣",
  trail = "·",
  precedes = "←",
  extends = "→",
  tab = "¬ ",
  conceal = "※",
}
vim.opt.list = true


-- Disable Netrw
-- vim.g.loaded = 1
-- m.g.loaded_netrwPlugin = 1

-- Cool floating window popup menu for completion on command line
opt.pumblend = 0
opt.wildmode = "longest:full"
opt.wildoptions = "pum"

opt.showmode = false
opt.showcmd = true
opt.cmdheight = 1 -- Height of the command bar
opt.incsearch = true -- Makes search act like search in modern browsers
opt.showmatch = true -- show matching brackets when text indicator is over them
opt.relativenumber = true -- Show line numbers
opt.number = true -- But show the actual number for the line we're on
opt.ignorecase = true -- Ignore case when searching...
opt.smartcase = true -- ... unless there is a capital letter in the query
opt.hidden = true -- I like having buffers stay around
opt.equalalways = false -- I don't like my windows changing all the time
opt.splitright = true -- Prefer windows splitting to the right
opt.splitbelow = true -- Prefer windows splitting to the bottom
opt.updatetime = 250 -- Make updates happen faster
opt.hlsearch = true
opt.scrolloff = 10 -- Make it so there are always ten lines below my cursor
opt.showbreak = "↪"

-- Cursorline highlighting control
-- Only have it on in the active buffer
--[[ opt.cursorline = true -- Highlight the current line ]]
--[[ local group = vim.api.nvim_create_augroup("CursorLineControl", { clear = true }) ]]
--[[ local set_cursorline = function(event, value, pattern) ]]
--[[   vim.api.nvim_create_autocmd(event, { ]]
--[[     group = group, ]]
--[[     pattern = pattern, ]]
--[[     callback = function() ]]
--[[       vim.opt_local.cursorline = value ]]
--[[     end, ]]
--[[   }) ]]
--[[ end ]]
--[[ set_cursorline("WinLeave", false) ]]
--[[ set_cursorline("WinEnter", true) ]]
--[[ set_cursorline("FileType", false, "TelescopePrompt") ]]

-- Tabs
opt.autoindent = true
opt.cindent = true
opt.wrap = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

opt.breakindent = true
opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
opt.linebreak = true

opt.foldmethod = "marker"
opt.foldlevel = 10
opt.modelines = 1

opt.belloff = "all" -- Just turn the dang bell off

opt.clipboard = "unnamedplus"

opt.inccommand = "split"
opt.swapfile = false -- Living on the edge
opt.shada = { "!", "'1000", "<50", "s10", "h" }

opt.mouse = "n"

-- Helpful related items:
--   1. :center, :left, :right
--   2. gw{motion} - Put cursor back after formatting motion.
--
-- TODO: w, {v, b, l}
opt.formatoptions = opt.formatoptions
  - "a" -- Auto formatting is BAD.
  - "t" -- Don't auto format my code. I got linters for that.
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore

-- set joinspaces
opt.joinspaces = false -- Two spaces and grade school, we're done

opt.fillchars = { eob = "~" }
opt.fillchars:append({
    horiz = '━',
    horizup = '┻',
    horizdown = '┳',
    vert = '┃',
    vertleft = '┨',
    vertright = '┣',
    verthoriz = '╋',
})

-- opt.diffopt = { "internal", "filler", "closeoff", "hiddenoff", "algorithm:minimal" }


-- disable some default providers
for _, provider in ipairs { "node", "perl", "python3", "ruby" } do
  vim.g["loaded_" .. provider .. "_provider"] = 0
end

local autocmd = vim.api.nvim_create_autocmd
-- dont list quickfix buffers
autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.opt_local.buflisted = false
  end,
})
