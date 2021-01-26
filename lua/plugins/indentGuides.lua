-- default options
require('indent_guides').setup({
  indent_levels = 5,
  indent_guide_size = 2,
  indent_start_level = 1,
  indent_space_guides = true,
  indent_tab_guides = false,
  indent_soft_pattern = '\\s',
  exclude_filetypes = {'help','dashboard', 'NvimTree'},
  even_colors = { fg ='#2E323A',bg='#34383F' };
  odd_colors = {fg='#34383F',bg='#2E323A'};
})
