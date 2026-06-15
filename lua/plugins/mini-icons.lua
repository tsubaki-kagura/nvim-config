local MiniIcons = require('mini.icons')
MiniIcons.setup({
    style = 'glyph',
    default = {},
    directory = {},
    extension = {},
    file = {},
    filetype = {},
    lsp = {},
    os = {},
})

-- 模拟 nvim-tree/nvim-web-devicons 对外提供图标
MiniIcons.mock_nvim_web_devicons()
