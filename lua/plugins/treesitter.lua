return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":tsupdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			require("nvim-treesitter.install").compilers = { "zig" }

			configs.setup({
				ensure_installed = { "c", "lua", "java", "kotlin" },
				sync_install = false,
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
