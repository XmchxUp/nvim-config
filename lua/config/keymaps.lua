-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- htop
if vim.fn.executable("htop") == 1 then
  vim.keymap.set("n", "<leader>xh", function()
    require("lazyvim.util").float_term({ "htop" })
  end, { desc = "htop" })
end

vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kj", "<ESC>", { noremap = true, silent = true })
