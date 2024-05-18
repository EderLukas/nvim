require("cyberdream").setup({
    -- Enable transparent background
    transparent = true,

    -- Enable italics comments
    italic_comments = true,

    -- Replace all fillchars with ' ' for the ultimate clean look
    hide_fillchars = true,

    -- Modern borderless telescope theme
    borderless_telescope = true,

    -- Set terminal colors used in `:terminal`
    terminal_colors = true,

    theme = {
        variant = "default", -- use "light" for the light variant
       
        -- Override a color entirely
        colors = {
            -- For a list of colors see `lua/cyberdream/colours.lua`
            -- Example:
            bgHighlight = "#163057",
						
        },
    },
})
