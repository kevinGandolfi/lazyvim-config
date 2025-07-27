return {
  "tpope/vim-fugitive",
  cmd = { "Git", "G" }, -- Lazy load when these commands are used
  keys = {
    { "<leader>gs", "<cmd>Git<CR>", desc = "Git Status" },
    { "<leader>ga", "<cmd>Git add<CR>", desc = "Git Add" },
    { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git Commit" },
    { "<leader>gps", "<cmd>Git push<CR>", desc = "Git Push" },
    { "<leader>gpl", "<cmd>Git pull<CR>", desc = "Git Pull" },
    { "<leader>gl", "<cmd>Git log<CR>", desc = "Git Log" },
    { "<leader>gb", "<cmd>Git blame<CR>", desc = "Git Blame" },
    { "<leader>gw", "<cmd>Gwrite<CR>", desc = "Git add current file" },
  },
}
