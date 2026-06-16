local generate = function(theme, colors)
    for mode, color in pairs(theme) do
        theme[mode] = {
            a = { bg = color, fg = colors.mantle },
            b = { bg = colors.surface0, fg = colors.text },
            c = { bg = colors.base, fg = colors.text },
        }
    end
    return theme
end

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
                CursorLine = { bg = colors.surface0 },
                Visual = { style = {} },
            }
        end,
    },
    default_integrations = false,
    integrations = {
        lualine = {
            mocha = function(colors)
                return generate({
                    normal = colors.lavender,
                    insert = colors.blue,
                    visual = colors.sapphire,
                    command = colors.mauve,
                    replace = colors.pink,
                }, colors)
            end,
        },
    },
})

-- 启用 catppuccin 主题
vim.cmd.colorscheme('catppuccin-nvim')
