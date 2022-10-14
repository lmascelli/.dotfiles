return 
{
  setup = function(use)
    use {
      'kyazdani42/nvim-tree.lua',
    }
  end, 

  config = function()
    vim.g.lm.append("toggle_explorer", function()
      vim.cmd ':NvimTreeToggle'
    end)

    require 'nvim-tree'.setup {
      view = {
        mappings = {
          list = {
            {key = "cd", action="cd"},
            {key = "cc", action = "copy"},
          }
        }
      }
    }
  end,
}
