-- For Goto Preview plugin
lvim.builtin.which_key.mappings["G"] = {
	name = "GoTo Preview",
	d = { "<Cmd>lua require('goto-preview').goto_preview_definition()<CR>", "Preview Definition" },
	t = { "<Cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", "Type Definition" },
	i = { "<Cmd>lua require('goto-preview').goto_preview_implementation()<CR>", "Implementation" },
	-- Only set if you have telescope installed
	r = { "<Cmd>lua require('goto-preview').goto_preview_references()<CR>", "References" },
}
