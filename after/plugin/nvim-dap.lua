require("dap").adapters.codelldb = {
	type = "server",
	host = "localhost",
	port = 14001,
	executable = {
		command = "codelldb",
		args =  { "--port", "${14001}" },
	},
}

require("dap").configurations.cpp = {
	{
		name = "Launch",
		type = "codelldb",
		request = "launch",
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		cwd = '${~/Code}',
		stopOnEntry = false,
	},
	{
		type = "codelldb",
		request = "attach",
		name = "Attach to process",
		pid = require("dap.utils").pick_prcess,
		cwd = "${~/Code}",
	},
}
