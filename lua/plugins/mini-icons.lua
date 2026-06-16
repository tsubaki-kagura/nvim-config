local MiniIcons = require('mini.icons')
MiniIcons.setup({
    style = 'glyph',
    file = {
        -- gradle 项目常用
        ['settings.gradle.kts'] = { glyph = '', hl = 'MiniIconsBlue' },
        ['build.gradle.kts'] = { glyph = '', hl = 'MiniIconsBlue' },
        gradlew = { glyph = '', hl = 'MiniIconsGrey' },

        -- maven 项目常用
        ['pom.xml'] = { glyph = '', hl = 'MiniIconsOrange' },

        -- spring boot 项目常用
        ['application.yaml'] = { glyph = '', hl = 'MiniIconsGreen' },
        ['application.properties'] = { glyph = '', hl = 'MiniIconsGreen' },
    },
    filetype = {
        toml = { glyph = '', hl = 'MiniIconsBlue' },
        dosbatch = { glyph = '󰖳', hl = 'MiniIconsBlue' },
        jproperties = { glyph = '', hl = 'MiniIconsGrey' },
        sh = { glyph = '', hl = 'MiniIconsGreen' },
    },
})

-- 模拟 nvim-tree/nvim-web-devicons 对外提供图标
MiniIcons.mock_nvim_web_devicons()
