
vim.call("plug#begin", "~/.local/share/nvim/plugged")

vim.fn["plug#"]("neoclide/coc.nvim", { branch = "release" })
vim.fn["plug#"]("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
vim.fn["plug#"]("nvim-lua/plenary.nvim")
vim.fn["plug#"]("nvim-telescope/telescope.nvim", { tag = "0.1.6" })
vim.fn["plug#"]("rust-lang/rust.vim")

vim.fn["plug#"]("rose-pine/neovim", { as = "rose-pine" })
vim.fn["plug#"]("lepture/vim-jinja")
-- vim.fn["plug#"]("github/copilot.vim")

vim.call("plug#end")

vim.cmd("colorscheme rose-pine")
