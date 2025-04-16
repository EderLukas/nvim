require("dap").adapters.codelldb = {
	type = "server",
	host = "localhost",
	port = 14001,
	executable = {
		command = "codelldb",
		args =  { "--port", "${port}" },
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
}
