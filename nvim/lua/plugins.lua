-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- file explorer
  use 'preservim/nerdtree'

  -- highlight
  use 'cateduo/vsdark.nvim'
  use 'jackguo380/vim-lsp-cxx-highlight'
  -- lsp (reqare: nodejs, yarn)
  use "williamboman/nvim-lsp-installer"
  use "neovim/nvim-lspconfig"
  -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  -- lspkind
  use 'onsails/lspkind-nvim'

  -- debug
  use { 'puremourning/vimspector', 
      run =  function() vim.cmd '!./install_gadget.py --enable-rust --enable-python' end
    }

  -- Markdown
  use 'ferrine/md-img-paste.vim'

  -- a status bar on bottom
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- file finder
  use { 'Yggdroot/Leaderf', run = ':LeaderfInstallCExtension' }

  -- Vim Wiki
  use 'vimwiki/vimwiki'

  -- teminal help
  use 'skywind3000/vim-terminal-help'

  -- enhance editor
  use 'tomtom/tcomment_vim'

  -- Theme
  use 'morhetz/gruvbox'
  -- use 'rakr/vim-one'

  -- Tree Icon
  use 'ryanoasis/vim-devicons'

  -- Html Enhanced
  use 'mattn/emmet-vim'

  -- Qt Quick
  use 'peterhoeg/vim-qml'

  -- AutoSave
  use '907th/vim-auto-save'
end)

