local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.eslint_d,
	formatting.autopep8,
	formatting.stylua,
}

null_ls.setup({
	sources = sources,
})
