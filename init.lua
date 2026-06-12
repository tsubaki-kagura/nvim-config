local opt = vim.opt

-- 开启行号和相对行号
opt.number = true
opt.relativenumber = true

-- 高亮当前光标行
opt.cursorline = true

-- 开启符号列并固定其宽度
opt.signcolumn = 'yes:1'

-- 开启垂直标尺并将其置于第 100 列
opt.colorcolumn = { '100' }

-- 配置默认缩进为 4 格缩进
local indent = 4
opt.expandtab = true
opt.tabstop = indent
opt.softtabstop = indent
opt.shiftwidth = indent

-- 配置搜索行为
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- 配置屏幕滑动行为
local scroll = 5
opt.scrolloff = scroll
opt.sidescrolloff = scroll * 2

-- 关闭交换文件和写入备份
opt.swapfile = false
opt.writebackup = false

-- 开启回退文件
opt.undofile = true

-- 开启快捷键等待并配置等待时间
opt.timeout = true
opt.timeoutlen = 250

-- 配置 - 字符为单词的一部分
opt.iskeyword:append('-')

-- 关闭文本包裹
opt.wrap = false

-- 配置切割生成新窗口的位置
opt.splitbelow = true
opt.splitright = true

-- 等待宏执行完毕后再重绘界面
opt.lazyredraw = true

-- 配置自动补全行为
opt.completeopt = { 'menu', 'menuone' }
opt.updatetime = 250

-- 配置窗口和补全菜单样式
local blend = 15
opt.winblend = blend
opt.winborder = 'rounded'
opt.pumblend = blend
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
