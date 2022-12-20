-- For Goto Preview plugin
lvim.builtin.which_key.mappings["G"] = {
	name = "GoTo Preview",
	d = { "<Cmd>lua require('goto-preview').goto_preview_definition()<CR>", "Preview Definition" },
	t = { "<Cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", "Type Definition" },
	i = { "<Cmd>lua require('goto-preview').goto_preview_implementation()<CR>", "Implementation" },
	-- Only set if you have telescope installed
	r = { "<Cmd>lua require('goto-preview').goto_preview_references()<CR>", "References" },
}

-- For LSP Saga
-- lvim.builtin.which_key.mappings["S"] = {
-- 	name = "Saga",
-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
-- f = { "<Cmd>Lspsaga lsp_finder<CR>", "Finder" },
-- Code action
-- a = { "<Cmd>Lspsaga code_action<CR>", "Code Action" },
-- Rename
-- r = { "<Cmd>Lspsaga rename<CR>", "Rename" },
-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
-- p = { "<Cmd>Lspsaga peek_definition<CR>", "Peek Definition" },
-- Show line diagnostics
-- s = { "<Cmd>Lspsaga show_line_diagnostics<CR>", "Show Line Diagnostics" },
-- Show cursor diagnostics
-- c = { "<Cmd>Lspsaga show_cursor_diagnostics<CR>", "Show Cursor Diagnostics" },
-- Jump to error
-- j = { "<Cmd>Lspsaga diagnostic_jump_prev<CR>", "Prev Diagnostics" },
-- k = { "<Cmd>Lspsaga diagnostic_jump_next<CR>", "Next Diagnostics" },
-- Outline
-- o = { "<Cmd>LSoutlineToggle<CR>", "Outline" },
-- Hover Doc
-- K = { "<Cmd>Lspsaga hover_doc<CR>", "Hover Doc" },
-- Lazygit in terminal
-- l = { "<Cmd>Lspsaga open_floaterm lazygit<CR>", "Lazygit in Terminal" },
-- }
