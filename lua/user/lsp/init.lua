local status_ok, config = pcall(require, "lspconfig")
if not status_ok then
	return
end

config.tsserver.setup({
	root_dir = require("lspconfig.util").root_pattern(".git"),
})
config.rust_analyzer.setup({
	root_dir = require("lspconfig.util").root_pattern(".git"),
})

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
