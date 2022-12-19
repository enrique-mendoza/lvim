-- General
-- lvim.colorscheme = "onedarker"
lvim.format_on_save.enabled = true
lvim.log.level = "warn"
lvim.lsp.diagnostics.float.focusable = true
lvim.lsp.diagnostics.virtual_text = true
lvim.reload_config_on_save = true

vim.opt.showtabline = 0

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.autopairs.active = true
lvim.builtin.breadcrumbs.active = true
lvim.builtin.cmp.cmdline.enable = false
lvim.builtin.cmp.window.documentation = false
lvim.builtin.cmp.window.completion = {
  border = "rounded",
  winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
}
lvim.builtin.dap.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.terminal.active = true
lvim.builtin.treesitter.highlight.enabled = true

-- Options

local options = {
  backup = false, -- creates a backup file
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  cmdheight = 1, -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0, -- so that `` is visible in markdown files
  cursorline = true, -- highlight the current line
  expandtab = true, -- convert tabs to spaces
  fileencoding = "utf-8", -- the encoding written to a file
  guifont = "Comic Code:h13", -- the font used in graphical neovim applications
  hlsearch = true, -- highlight all matches on previous search pattern
  ignorecase = true, -- ignore case in search patterns
  laststatus = 3,
  mouse = "a", -- allow the mouse to be used in neovim
  number = true, -- set numbered lines
  numberwidth = 4, -- set number column width to 2 {default 4}
  pumheight = 10, -- pop up menu height
  relativenumber = true, -- set relative numbered lines
  ruler = false,
  scrolloff = 0,
  sidescrolloff = 8,
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  showcmd = false,
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  showtabline = 0, -- always show tabs
  smartcase = true, -- smart case
  smartindent = true, -- make indenting smarter again
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  swapfile = false, -- creates a swapfile
  undofile = true, -- enable persistent undo
  updatetime = 100, -- faster completion (4000ms default)
  tabstop = 2, -- insert 2 spaces for a tab
  termguicolors = true, -- set term gui colors (most terminals support this)
  title = true,
  timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
  wrap = false, -- display lines as one long line
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
}

vim.opt.fillchars = vim.opt.fillchars + "eob: "
vim.opt.fillchars:append {
  stl = " ",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Switching between numbers and relative numbers
vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = '*',
  command = "set norelativenumber"
})
