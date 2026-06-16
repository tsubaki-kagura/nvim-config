local gh = function(repo)
    return 'git@github.com:' .. repo .. '.git'
end

local plugins = {
    { src = gh('catppuccin/nvim'), name = 'catppuccin' },
    { src = gh('nvim-mini/mini.icons'), name = 'mini-icons' },
    { src = gh('nvim-lualine/lualine.nvim'), name = 'lualine' },
}

vim.pack.add(plugins)

for _, plugin in pairs(plugins) do
    if not plugin.lib then
        require('plugins.' .. plugin.name)
    end
end
