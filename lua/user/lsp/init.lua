local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup({
	root_dir = require("lspconfig.util").root_pattern(".git"),
})
require("user.lsp.null-ls")
