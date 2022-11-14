local function wk_set_keymap(mode, map, expr, opts, buf, name)
  local wk = require 'which-key'
  opts = opts or {
    silent = true,
    noremap = true,
    nowait = false,
  }
  local mapping = {}
  local mapping_data = {}
  if string.len(expr) > 0 then
    table.insert(mapping_data, 0, expr)
    table.insert(mapping_data, 1, name)
  else
    mapping_data.name = name or ''
  end
  mapping[map] = mapping_data

  local wk_opts = {
    mode = mode,
    buffer = buf,
    silent = opts.silent,
    noremap = opts.noremap,
    nowait = opts.nowait,
  }
  wk.register(mapping, wk_opts)
end

return {
  setup = function(use)
    use 'folke/which-key.nvim'
    LM.keymap.set_keymap = wk_set_keymap
  end,

  config = function()
    local wk = require 'which-key'
    wk.setup {
      window = {
        border = "double",
        margin = { 1, 1, 1, 1 },
        padding = { 2, 2, 2, 2 },
      },
      layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, max = 50 },
        spacing = 5,
        align = "left",
      },
      show_help = true,
    }
    vim.opt.timeoutlen = 500
  end
}
