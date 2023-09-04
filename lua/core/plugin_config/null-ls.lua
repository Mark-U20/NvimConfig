local null_ls_status_ok, null_ls = pcall(require, "null_ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
	formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
	formatting.black.with({ extra_args = { "--fast" } }),
	formatting.eslint_d,
	formatting.autopep8,
	formatting.stylua,
  formatting.jsonls,
  formatting.yamlls,
}


null_ls.setup({
	sources = sources,
})
