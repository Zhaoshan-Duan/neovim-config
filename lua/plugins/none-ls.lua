return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
                -- lua
				null_ls.builtins.formatting.stylua,
                -- js
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.eslint_d,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
