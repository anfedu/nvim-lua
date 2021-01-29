local function setOptions(options)
    for key, val in pairs(options) do
        if val == true then
            vim.api.nvim_command('set ' .. key)
        elseif val == false then
            vim.api.nvim_command('set no' .. key)
        else
            vim.api.nvim_command('set ' .. key .. '=' .. val)
        end
    end
end

local options = {
    autoindent = true,
    autoread = true,
    backspace = 'indent,eol,start',
    -- backup = true,
    -- backupdir = '~/.local/share/nvim/backup',
    bg = 'dark',
    binary = true,
    bomb = true,
    nuw = 5,
    shell = '/usr/bin/zsh',
    clipboard = 'unnamedplus',
    compatible = false,
    completeopt = 'menuone,noselect',
    conceallevel = 0,
		cursorline = true,
    -- cursorcolumn = false,
    swapfile=false,
    encoding = 'utf-8',
    errorbells = false,
    expandtab = true,
    fileencoding = 'utf-8',
    fileencodings = 'utf-8',
    fileformat = 'unix',
    fillchars = 'vert:┃',
    foldlevel = 0,
    foldmethod = 'manual',
    foldexpr = 'nvim_treesitter#foldexpr()',
    formatoptions = 'jcroql',
    gdefault = true,
    hidden = true,
    hlsearch = true,
    ignorecase = true,
    inccommand = 'nosplit',
    incsearch = true,
    laststatus = 2,
    lazyredraw = true,
    linebreak = true,
    linespace = 0,
    list = true,
    listchars = 'tab:»»,trail:-,nbsp:-',
    mouse = 'a',
    guitablabel = '',
    number = true,
    pumblend = 10,
    pumheight = 15,
    pyxversion = 3,
    regexpengine = 1,
    -- relativenumber = true,
    report = 2,
    ruler = true,
    scrolloff = 5,
    shortmess = 'atToOc',
    showcmd = true,
    showmatch = true,
    showmode = true,
    showtabline = 2,
    sidescrolloff = 10,
    smartcase = true,
    cmdheight = 2,
    tabstop = 2,
    softtabstop = 2,
    shiftwidth = 2,
    splitbelow = true,
    splitright = true,
    -- startofline = false,
    t_Co = '256',
    termguicolors = true,
    -- title = false,
    -- titlestring = '%t%(%M%)%((%{expand("%:~:.:h")})%)%( %a%)',
    ttimeoutlen = 50,
    updatetime = 300,
    visualbell = false,
    wildmenu = true,
    wildmode = 'full',
    wildoptions = 'pum',
    winblend = 0,
    wrap = false,
    -- writebackup = true
}
setOptions(options)
