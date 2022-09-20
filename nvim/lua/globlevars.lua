vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = "deus"

-- ========= Terminal help =========

if vim.fn.has("WIN32") == 1 then
  vim.g.terminal_shell = "pwsh.exe -NoLogo"
end

vim.g.terminal_cmd = 2

-- ========= VimSpector_config =========
vim.g.vimspector_enable_mappings = 'HUMAN'

-- ========= Yggdroot/LeaderF =========
vim.g.Lf_WindowPosition = 'right'
vim.g.Lf_PreviewInPopup = 1
vim.g.Lf_CommandMap = {
  [ '<C-p>' ] = { '<C-k>' },
  [ '<C-k>' ] = { '<C-p>' },
  [ '<C-j>' ] = { '<C-n>' }
}

-- ========= Markdown ==================
vim.g.mdip_imgdir = 'image'

-- ========= airline options =========
vim.g["airline#extensions#tabline#enabled"] = 1

vim.g.Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"

-- ========= 907th/vim-auto-save =========

vim.g.auto_save = 1
-- vim.g.auto_save_events = { "InsertLeave", "TextChanged" }
vim.g.auto_save_events = { "BufLeave" }
-- let g:auto_save_write_all_buffers = 1

