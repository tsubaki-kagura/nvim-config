local opt = vim.opt
local consts = vim.g.consts

-- 开启行号和相对行号
opt.number = true
opt.relativenumber = true

-- 高亮当前光标行
opt.cursorline = true

-- 开启垂直标尺并固定其位置
opt.colorcolumn:append(consts.column)

-- 开启符号列并固定其宽度
opt.signcolumn = 'yes:1'

-- 开启终端真颜色支持
opt.termguicolors = true

-- 使用 4 格缩进
local indent = 4
opt.tabstop = indent
opt.softtabstop = indent
opt.shiftwidth = indent
opt.expandtab = true

-- 配置搜索行为
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- 关闭文本包裹
opt.wrap = false

-- 关闭模式显示
opt.showmode = false

-- 使用全局状态栏
opt.laststatus = 3

-- 配置屏幕滑动行为
local scroll = 5
opt.scrolloff = scroll
opt.sidescrolloff = scroll * 2

-- 关闭交换文件和写入备份
opt.swapfile = false
opt.writebackup = false

-- 开启回退文件
opt.undofile = true

-- 配置快捷键等待时间
opt.timeoutlen = consts.timeout

-- 添加 - 字符作为单词的一部分
opt.iskeyword:append('-')

-- 添加 @ 字符作为文件名的一部分
opt.isfname:append('@-@')

-- 配置切割生成新窗口的位置
opt.splitbelow = true
opt.splitright = true

-- 等待宏执行完毕后再重绘界面
opt.lazyredraw = true

-- 配置自动补全行为
opt.completeopt = { 'menu', 'menuone' }
opt.updatetime = consts.timeout

-- 配置窗口和补全菜单样式
opt.winblend = 20
opt.winborder = 'rounded'
opt.pumblend = opt.winblend:get()
opt.pumheight = 10

-- 配置不可见字符的显示样式
opt.list = true
opt.listchars = {
    tab = '» ',
    trail = '·',
    nbsp = '⍽',
}

-- 关闭模块检测
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
