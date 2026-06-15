local consts = vim.g.consts

-- 联通系统剪贴板
vim.api.nvim_create_autocmd('UIEnter', {
    callback = function()
        vim.opt.clipboard:append('unnamedplus')
    end,
})

-- 高亮复制文本
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.hl.on_yank({ higroup = 'Visual', timeout = consts.timeout })
    end,
})

-- 恢复光标至上次退出的位置
vim.api.nvim_create_autocmd('BufReadPost', {
    callback = function()
        local last_pos = vim.api.nvim_buf_get_mark(0, '"')
        local last_line = vim.api.nvim_buf_line_count(0)
        if last_pos[1] >= 1 and last_pos[1] <= last_line then
            vim.api.nvim_win_set_cursor(0, last_pos)
        end
    end,
})

-- 开启文档类 buffer 的文本包裹
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'markdown', 'text' },
    callback = function()
        vim.opt_local.colorcolumn:remove(consts.colorcolumn)
        vim.opt_local.wrap = true
    end,
})

-- 特定 buffer 使用 2 格缩进
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'html', 'css', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
    callback = function()
        local indent = 2
        vim.opt_local.tabstop = indent
        vim.opt_local.softtabstop = indent
        vim.opt_local.shiftwidth = indent
    end,
})
