-- 抽取部分常量
vim.g.consts = {
    column = '100',
    timeout = 250,
}

require('options')
require('keymaps')
require('autocmds')
require('plugins.catppuccin')
