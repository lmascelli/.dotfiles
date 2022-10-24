lua << EOF
if vim.fn.exists(':GuiFont') then
  vim.g.lm.append('update_font', function ()
    vim.cmd (':GuiFont! ' .. vim.g.lm.font_name .. ':h' .. vim.g.lm.font_size) 
  end)
  vim.g.lm.update_font()
end

if vim.fn.exists(':GuiScrollBar') then
  vim.cmd ':GuiScrollBar 0'
end

if vim.fn.exists(':GuiPopupmenu') then
  vim.cmd ':GuiPopupmenu 1'
end

if vim.fn.exists(':GuiTabline') then
  vim.cmd ':GuiTabline 0'
end
EOF
