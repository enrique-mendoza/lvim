local status, saga = pcall(require, "lspsaga")

if not status then
	return
end

saga.init_lsp_saga()

local opts = { noremap = true, silent = true }

-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)

-- Code action
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)

-- Rename
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", opts)

-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)

-- Show line diagnostics
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Show cursor diagnostics
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)

-- Diagnostic jump can use `<c-o>` to jump back
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

-- Only jump to error
vim.keymap.set("n", "[E", function()
	require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opts)
vim.keymap.set("n", "]E", function()
	require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opts)

-- Outline
vim.keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)

-- Hover Doc
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

-- Float terminal
vim.keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", opts)
-- if you want to pass some cli command into a terminal you can do it like this
-- open lazygit in lspsaga float terminal
vim.keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>", opts)
-- close floaterm
vim.keymap.set("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], opts)
