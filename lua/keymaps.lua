-- 设置 <space> 为 <leader>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- 自定义按键映射函数
local register = function(specs)
    for mode, keymaps in pairs(specs) do
        for lhs, rhs in pairs(keymaps) do
            vim.keymap.set(mode, lhs, rhs.key, rhs.opts or {})
        end
    end
end

register({
    i = {
        jk = { key = '<esc>' },
        ['<a-h>'] = { key = '<left>' },
        ['<a-j>'] = { key = '<down>' },
        ['<a-k>'] = { key = '<up>' },
        ['<a-l>'] = { key = '<right>' },
    },
    n = {
        U = { key = '<c-r>' },
        ['<leader>wj'] = { key = '<cmd>horizontal split<cr>' },
        ['<leader>wl'] = { key = '<cmd>vertical split<cr>' },
        ['<leader>wd'] = { key = '<cmd>close<cr>' },
        ['<c-h>'] = { key = '<c-w>h' },
        ['<c-j>'] = { key = '<c-w>j' },
        ['<c-k>'] = { key = '<c-w>k' },
        ['<c-l>'] = { key = '<c-w>l' },
        ['<a-h>'] = { key = '<cmd>vertical resize +1<cr>' },
        ['<a-j>'] = { key = '<cmd>horizontal resize -1<cr>' },
        ['<a-k>'] = { key = '<cmd>horizontal resize +1<cr>' },
        ['<a-l>'] = { key = '<cmd>vertical resize -1<cr>' },
        ['<leader>nh'] = { key = '<cmd>nohlsearch<cr>' },
        ['<a-z>'] = {
            key = function()
                vim.opt_local.wrap = not vim.opt_local.wrap:get()
                local column = vim.opt_local.colorcolumn
                if vim.opt_local.wrap:get() then
                    column:remove(vim.g.consts.column)
                else
                    column:append(vim.g.consts.column)
                end
                local status = vim.opt_local.wrap:get() and 'enabled' or 'disabled'
                vim.notify('vim.opt_local.wrap is ' .. status)
            end,
        }
    },
    x = {
        p = { key = '"_xP' },
        ['<a-h>'] = { key = '<gv' },
        ['<a-j>'] = { key = ':m \'>+1<cr>gv' },
        ['<a-k>'] = { key = ':m \'<-2<cr>gv' },
        ['<a-l>'] = { key = '>gv' },
    },
    [{ 'n', 'x' }] = {
        x = { key = '"_x' },
        c = { key = '"_c' },
        j = {
            key = 'v:count == 0 ? "gj" : "j"',
            opts = { expr = true },
        },
        k = {
            key = 'v:count == 0 ? "gk" : "k"',
            opts = { expr = true },
        },
    },
    [{ 'n', 'x', 'o' }] = {
        H = { key = '^' },
        L = { key = '$' },
    },
})
