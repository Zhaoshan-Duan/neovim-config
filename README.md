# Structure

```
├── README.md
├── init.lua (first place neovim goes; requires jojo/init.lua)
└───lua
    ├── plugins.lua
    ├───jojo
        ├── init.lua (requires the following files)
        ├── lazy.lua (lazy-vim setup)
        ├── remap.lua 
        ├── set.lua 
    └───plugins (contains packages)
        ├── telescope.lua 
```

# Packages & Remaps

## [telescope](https://github.com/nvim-telescope/telescope.nvim)
Fuzzy finder
- `<leader>pf` for all file search
- `<C-p>` for git file search
- `<leader>ps` for project grep

## [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## [harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
Quick file navigation
- `<leader>a` add current file to harpoon
- `<C-e>` toggle quick menu
- `<C-h>`, `<C-t>`, `<C-n>`, `<C-s>` select files in the harpoon list

## [undotree](https://github.com/mbbill/undotree)
Undo history visualizer
- `<leader>u` toggle undo history

## [fugitive](https://github.com/tpope/vim-fugitive)
Git plugin for Vim
- `<leader>gs`

## LSP



