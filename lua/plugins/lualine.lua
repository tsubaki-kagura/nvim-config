require('lualine').setup({
    options = {
        theme = 'catppuccin-nvim',
        component_separators = '',
        refresh = { statusline = vim.g.consts.timeout },
    },
    sections = {
        lualine_a = {
            {
                'mode',
                separator = { left = '' },
                fmt = function(mode)
                    return mode:sub(1, 1) .. mode:sub(2):lower()
                end,
            },
        },
        lualine_b = {
            {
                'filetype',
                separator = { right = '' },
                icon = { align = 'left' },
            },
        },
        lualine_c = {
            {
                'filename',
                icon = { '', align = 'left' },
                path = 1,
                shorting_target = 64,
            },
        },
        lualine_x = {
            {
                'branch',
                icon = { '', align = 'left' },
            },
            {
                'encoding',
                icon = { '', align = 'left' },
                show_bomb = true,
            },
        },
        lualine_y = {
            {
                'progress',
                separator = { left = '' },
            },
        },
        lualine_z = {
            {
                'location',
                separator = { right = '' },
            },
        },
    },
})
