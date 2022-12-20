-- For more info: https://www.lunarvim.org/docs/frameworks/angular
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "angularls" })

require("lvim.lsp.manager").setup("angularls")
