-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Miscellaneous
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "<C-l>", "<Cmd>nohlsearch<CR><C-l>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-d>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-u>", { noremap = true, silent = true })

-- Smartword
vim.keymap.set("n", "w", "<Plug>(smartword-w)")
vim.keymap.set("n", "b", "<Plug>(smartword-b)")
vim.keymap.set("n", "e", "<Plug>(smartword-e)")
vim.keymap.set("n", "ge", "<Plug>(smartword-ge)")

-- Window navigation
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-l>", "<C-w>l")
vim.keymap.set("n", "<M-w>", "<C-w>w")

-- Terminal mode mappings
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
    vim.keymap.set("t", "<C-v><Esc>", "<Esc>", { noremap = true, silent = true })
    vim.keymap.set("t", "<M-h>", [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })
    vim.keymap.set("t", "<M-j>", [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })
    vim.keymap.set("t", "<M-k>", [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
    vim.keymap.set("t", "<M-l>", [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })
    vim.keymap.set("t", "<M-w>", [[<C-\><C-n><C-w>w]], { noremap = true, silent = true })
    vim.keymap.set("t", "<M-q>", [[<C-\><C-n><C-w>q]], { noremap = true, silent = true })
  end,
})

-- DAP Keybindings
vim.keymap.set("n", "<F5>", function()
  require("dap").continue()
end, { desc = "DAP Continue" })
vim.keymap.set("n", "<F10>", function()
  require("dap").step_over()
end, { desc = "DAP Step Over" })
vim.keymap.set("n", "<F11>", function()
  require("dap").step_into()
end, { desc = "DAP Step Into" })
vim.keymap.set("n", "<F12>", function()
  require("dap").step_out()
end, { desc = "DAP Step Out" })
