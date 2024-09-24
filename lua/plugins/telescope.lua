return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{
			"<leader>fp",
				function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
				desc = "Find File",
		},
  },
}
