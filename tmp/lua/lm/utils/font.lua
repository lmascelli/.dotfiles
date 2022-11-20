local font = {
  font_name = '',
  font_size = 10,
}

local custom = LM.custom.load_custom()

if custom and custom.font_size then
  font.font_size = custom.font_size
end

if custom and custom.font_name then
  font.font_name = custom.font_name
end

font.update_font = function ()
  vim.opt.guifont = font.font_name .. ':h' .. font.font_size
end

font.increase_font_size = function ()
  font.font_size = font.font_size + 1
  font.update_font()
end

font.decrease_font_size = function ()
  font.font_size = font.font_size - 1
  font.update_font()
end

font.update_font()

LM.font = font