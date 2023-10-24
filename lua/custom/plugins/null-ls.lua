return {
	"jose-elias-alvarez/null-ls.nvim",
	init = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			debug = false,
			sources = {
				null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.formatting.eslint_d,
                null_ls.builtins.diagnostics.markdownlint_cli2.with {
                    args = { "$FILENAME" }
                }
			}
		})
	end
}
