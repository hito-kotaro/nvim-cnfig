local status, saga = pcall(require, "lspsaga")
if (not status) then return end

-- init_lsp_saga is no longer available, so be carefull
saga.setup {
	server_filetype_map = {
		typescript = 'typescript'
	},
	-- not working...
	code_action_lightbulb = {
		enable = false,
	}
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga finder<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)


-- local opts = { noremap = true, silent = true }
-- vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
-- vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
-- vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
-- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
-- vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
-- vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
