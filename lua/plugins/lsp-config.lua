return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", --lua
					"clangd", --C
					"jdtls", -- java
                    "gopls" -- Golan
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.jdtls.setup({})
            lspconfig.gopls.setup({})

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<CR>K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}

--{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
--{'hrsh7th/cmp-nvim-lsp'},
--{'hrsh7th/nvim-cmp'},
--{'L3MON4D3/LuaSnip'}
