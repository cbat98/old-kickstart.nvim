return {
	"nvimtools/none-ls.nvim",
	init = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.formatting.eslint_d,
                null_ls.builtins.diagnostics.markdownlint_cli2.with {
                    args = { "$FILENAME" }
                },
                null_ls.builtins.formatting.jq.with {
                    args = { ".", "--indent", 4 }
                }
			},
		})
	end
}
