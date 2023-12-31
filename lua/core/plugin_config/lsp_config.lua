require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "clangd", "lua_ls", "tsserver", "jsonls", "yamlls", "spectral", "tailwindcss", "html", "prettier" }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").glint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "hbs", "handlebars", "html.handlebars" },
}
require("lspconfig").html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html" },
})

require("lspconfig").prettier.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "css, scss" },
})



require("lspconfig").tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
}
-- require("lspconfig").tailwindcss.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "css", "scss", "less" },
-- }
--create one for bash
 require("lspconfig").bashls.setup {
   on_attach = on_attach,
   capabilities = capabilities,
   filetypes = { "sh", "zsh" },
 }


require("lspconfig").rust_analyzer.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "rust" },
  root_dir = require("lspconfig/util").root_pattern("Cargo.toml", "rust-project.json"),
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importGranularity = "module",
        importPrefix = "by_self",
      },
      cargo = {
        loadOutDirsFromCheck = true,
        allFeatures = true,
      },
      procMacro = {
        enable = true
      },
      check = {
        extraArgs = { "-r" },
      },
    }
  }
}

require("lspconfig").eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
}
--setup for css lsp prettier for fomratting
-- require("lspconfig").cssls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "css", "scss", "less" },
-- }


require("lspconfig").yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "yaml" },
  settings = {
    yaml = {
      schemas = {
        url = "https://www.schemastore.org/api/json/catalog.json",
        enable = true,
      }
    }
  }
}
