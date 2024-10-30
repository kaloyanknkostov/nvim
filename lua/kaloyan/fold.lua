vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- chat
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'v:lua.require("ufo").get_fold_virt_text'

vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

local language_servers = require('lspconfig').util.available_servers()
for _, ls in ipairs(language_servers) do
  require('lspconfig')[ls].setup {
    capabilities = capabilities,
    -- You can add additional setup options here as needed
  }
end

require('ufo').setup()

-- require('ufo').setup {
--   provider_selector = function(bufnr, filetype, buftype)
--     return { 'lsp', 'indent' }
--   end,
-- }
