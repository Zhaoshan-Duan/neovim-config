return { {
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			require("nvim-treesitter.install").compilers = { "zig" }

			configs.setup({
				ensure_installed = { "c", "lua", "java" },
				sync_install = false,
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
