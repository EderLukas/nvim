local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers
lsp_zero.preset('recommended')

lsp_zero.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
 },
})

local cmp = require('cmp')
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		 -- confirm completion item
    ['<Enter>'] = cmp.mapping.confirm({ select = true }),

    -- trigger completion menu
    ['<C-c>'] = cmp.mapping.complete(),
		
		-- remaps
		['<C-u>'] = cmp.mapping.select_prev_item({behavior = 'select'})
	})
})
