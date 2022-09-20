-- nvim_create_user_command
vim.api.nvim_create_user_command("Gxmake",
  function(args)
    if vim.fn.empty(vim.fn.glob('xmake.lua')) then
      print("Can't find xmake.lua.")
      return
    end
    vim.cmd "!xmake project -k compile_commands"
  end, { nargs = "*", desc = "Generate Ninja Compile Commands.", }
)

vim.api.nvim_create_user_command("Gvimspector",
  function(args)
    if not vim.fn.empty(vim.fn.glob('.vimspector.json')) then
      print(".vimspector already existing.")
      return
    end
    local prefix = ""
    if vim.fn.has("WIN32") == 1 then
      prefix = "!copy"..vim.env.HOMEPATH.."\\AppData\\Local\\nvim\\vimspector_conf\\"
    elseif vim.fn.has("LINUX") == 1 then
      prefix = "!cp ~/.config/nvim/vimspector_conf/"
    end
    if vim.bo.filetype == 'c' or vim.bo.filetype == 'cpp' then
      vim.fn.execute(prefix.."c.json .vimspector.json")
    elseif vim.bo.filetype == 'python' then
      vim.fn.execute(prefix.."python.json .vimspector.json")
    else
      vim.cmd(prefix.."normal.json .vimspector.json")
    end
    vim.cmd "e .vimspector.json"
  end, { nargs = "*", desc = "Generate Ninja Compile Commands.", }
)

-- vim.api.nvim_create_user_command('Format', "call CocAction('format')", { nargs = '*' })

