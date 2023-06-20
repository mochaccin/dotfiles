local PFX = 'nvpunk.plugins.interface.'
local plugins = {
    'devicons',
    'whichkey',
    'nui',
    'treesitter',
    'alpha',
    'bqf',
    'bufferline',
    'gitsigns',
    'highlight_colors',
    'indent_blankline',
    'lualine',
    'navic',
    'neotree',
    'ufo',
    'statuscol',
}

return vim.tbl_map(
    function(plugin) return require(PFX .. plugin) end,
    plugins
)
