return {
	'stevearc/conform.nvim',
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({

			formatters_by_ft = {
				lua = { "lua_ls" },
				python = { "pyright", "black" },
			},

			format_on_save = {
				-- I recommend these options. See :help conform.format for details.
				lsp_format = "fallback",
				timeout_ms = 500,
			},

			format_after_save = {
				lsp_format = "fallback",
			},
		})
	end,
}
