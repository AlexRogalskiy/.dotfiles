require'snippets'.use_suggested_mappings()

local on_attach = require'completion'.on_attach

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

require'lspconfig'.cssls.setup {capabilities = capabilities, on_attach = on_attach}
