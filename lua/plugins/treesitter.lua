return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":tsupdate",    
    config = function() 

        local configs = require("nvim-treesitter.configs")
        require("nvim-treesitter.install").compilers = {"zig"}

        configs.setup({
            ensure_installed = { "c", "lua" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
