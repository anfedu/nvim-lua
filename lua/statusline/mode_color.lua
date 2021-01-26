local colors = require('statusline.colors')

local mode_color = {n = 'aquamarine', 
										i = colors.orange,
										v = colors.blue,
										[''] = colors.blue,
										V = colors.blue,
										c = colors.purple,
										no = colors.magenta,
										s = colors.orange,
										S = colors.orange,
										[''] = colors.orange,
										ic = colors.yellow,
										R = colors.red,
										Rv = colors.red,
										cv = colors.red,
										ce=colors.red, 
										r = colors.cyan,
										rm = colors.cyan, 
										['r?'] = colors.cyan,
										['!']  = colors.red,
										t = colors.red}
return mode_color
