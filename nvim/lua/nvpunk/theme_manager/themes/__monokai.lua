--- Set monokai theme with specific style
---@param style 'pro' | 'octagon' | 'machine' | 'ristretto' | 'spectrum' | 'classic'
return function(style)
    require('monokai-pro').setup {
        transparent_background = false,
        terminal_colors = true,
        devicons = true,
        styles = {
            comment = { italic = true },
            keyword = { italic = true }, -- any other keyword
            type = { italic = true }, -- (preferred) int, long, char, etc
            storageclass = { italic = true }, -- static, register, volatile, etc
            structure = { italic = true }, -- struct, union, enum, etc
            parameter = { italic = true }, -- parameter pass in function
            annotation = { italic = true },
            tag_attribute = { italic = true }, -- attribute of tag in reactjs
        },
        filter = style, -- classic | octagon | pro | machine | ristretto | spectrum
        -- Enable this will disable filter option
        day_night = {
            enable = false, -- turn off by default
            -- day_filter = 'pro', -- classic | octagon | pro | machine | ristretto | spectrum
            -- night_filter = 'spectrum', -- classic | octagon | pro | machine | ristretto | spectrum
        },
        inc_search = 'background', -- underline | background
        -- background_clear = {
        --     -- "float_win",
        --     'toggleterm',
        --     'telescope',
        --     'which-key',
        --     'renamer',
        -- }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
        plugins = {
            bufferline = {
                underline_selected = true,
                underline_visible = true,
            },
            indent_blankline = {
                context_highlight = 'pro', -- default | pro
                context_start_underline = false,
            },
        },
    }
    vim.cmd 'colorscheme monokai-pro'
    reload 'nvpunk.theme_manager.lualine' 'monokai-pro'
end
