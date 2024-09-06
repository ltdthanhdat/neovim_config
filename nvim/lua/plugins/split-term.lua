return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
		require('toggleterm').setup()
		vim.keymap.set('n', '<leader>v', ':ToggleTerm<CR>', { noremap = true, silent = true })
		-- vim.keymap.set('n', '<C-`>', ':ToggleTerm<CR>', { noremap = true, silent = true })
	end
}
