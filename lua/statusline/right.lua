local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree','vista','dbui'}

local colors = require('statusline.colors')

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

gls.right[2] = {
  LineInfo = {
    provider = function()
      return  ''
    end,
    separator = '  ',
    separator_highlight = {'#000000', colors.bg },
    highlight = {colors.grey,'#000000'},
  },
}
gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = '',
    separator_highlight = {colors.darkblue,'#000000'},
    highlight = {colors.grey,'#000000'},
  }
}
gls.right[4] = {
  ScrollBar = {
    provider = 'ScrollBar',
    separator = ' ',
    separator_highlight = {colors.darkblue,'#000000'},
    highlight = {'springgreen',colors.purple},
  }
}


-- gls.short_line_right[1] = {
--   BufferIcon = {
--     provider= 'BufferIcon',
--     separator = ' ',
--     separator_highlight = {colors.purple,'#000000'},
--     highlight = {colors.grey, '#000000'}
--   }
-- }
