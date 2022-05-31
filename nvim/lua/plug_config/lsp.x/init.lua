local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print("lspconfig not found")
    return
end

require "plug_config.lsp.configs"
require("plug_config.lsp.handlers").setup()
-- require "plug_config.lsp.null-ls"
