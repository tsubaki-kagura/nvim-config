local gh = function(repo)
    return 'git@github.com:' .. repo .. '.git'
end

vim.pack.add({
    { src = gh('catppuccin/nvim'), name = 'catppuccin' },
})

require('catppuccin').setup({
    flavour = 'mocha',
    dim_inactive = { enabled = true },
    styles = {
        comments = {},
        conditionals = {},
    },
    highlight_overrides = {
        mocha = function(colors)
            return {
                StatusLine = { bg = colors.base },
                CursorLine = { bg = colors.surface0 },
                Visual = { style = {} },
            }
        end,
    },
    default_integrations = false,
})

-- 开启终端颜色支持并使用 catppuccin 主题
vim.cmd.colorscheme('catppuccin-nvim')
