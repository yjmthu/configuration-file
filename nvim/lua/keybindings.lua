local map = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local mapArgTableLeader = {
  { 'n', 'k', '20kzz', true},
  { 'n', 'j', '20jzz', true },
  { 'n', 'l', '20l', true },
  { 'n', 'h', '20j', true },
  { 'v', 'v', '"+gp', true },
  { 'n', 'v', '"+gp', true },
  { 'v', 'c', '"+y', true },
  { 'n', 'e', ':NERDTree<CR>', true},
  { 'n', 'q', ':NERDTreeClose<CR>', true },
  { 'n', 'n', ':tabn<CR>', true },
  { 'n', 'N', 'tabnew<CR>', true },
  { 'n', 'p', 'tabp<CR>', true },
  { 'n', 's', 'tabs<CR>', true },
  { 'n', 'D', 'tabo<CR>', true },
  { 'n', 'd', 'tabc<CR>', true },
  { 'n', 'r', 'VimspectorReset<CR>', true },
  { 'n', 'g', 'silent update<Bar>silent !"C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe" %:p &<CR>', true },
  { 'n', 'rr', ':so $MYVIMRC<CR>', true },
  { 'n', 're', ':e $MYVIMRC<CR>', true },
  { 'n', 'cn', 'g>c', false },
  { 'v', 'cn', 'g>', false },
  { 'n', 'cu', 'g<c', false },
  { 'v', 'cu', 'g<', false },
  { 'n', 'K', ':call ShowDocumentation()', true },
  { 'n', 'f', ':Leaderf file<CR>', true },
  { 'n', 'F', ':Leaderf rg<CR>', true },
  { 'n', 'b', ':Leaderf! buffer<CR>', true },
}

local mapArgTable = {
  { 'n', '=', 'nzz', true },
  { 'n', '-', 'Nzz', true },
  { 'n', '<Left>', '<C-W>h', true },
  { 'n', '<Right>', '<C-W>l', true },
  { 'n', '<Up>', '<C-W>k', true },
  { 'n', '<Down>', '<C-W>j', true },
}

for _, value in ipairs(mapArgTableLeader) do
  map(value[1], '<leader>'..value[2], value[3], {noremap = value[4], silent = false })
end

for _, value in ipairs(mapArgTable) do
  map(value[1], value[2], value[3], {noremap = value[4], silent = false })
end

--[[
function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.vsnip_jump_next()
  return vim.fn['vsnip#jumpable'](1) == 1 and t'<Plug>(vsnip-jump-next)' or t'<C-j>'
end

function _G.vsnip_jump_prev()
  return vim.fn['vsnip#jumpable'](-1) == 1 and t'<Plug>(vsnip-jump-prev)' or t'<C-k>'
end

vim.api.nvim_set_keymap('i', '<C-j>', 'v:lua.vsnip_jump_next()', {expr = true, noremap=false})
vim.api.nvim_set_keymap('s', '<C-j>', 'v:lua.vsnip_jump_next()', {expr = true, noremap=false})
vim.api.nvim_set_keymap('i', '<C-k>', 'v:lua.vsnip_jump_prev()', {expr = true, noremap=false})
vim.api.nvim_set_keymap('s', '<C-k>', 'v:lua.vsnip_jump_prev()', {expr = true, noremap=false})
]]

