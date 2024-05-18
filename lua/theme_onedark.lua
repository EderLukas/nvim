require('onedark').setup{
	style = 'deep',
	transparent = true,
	code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = true, -- lualine center bar transparency
    },
}

require('onedark').load()
