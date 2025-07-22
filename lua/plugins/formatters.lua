-- ~/.config/nvim/lua/plugins/formatters.lua
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sql = { "sql_formatter" },
    },
    format_on_save = false,
    formatters = {
      sql_formatter = {
        command = "sql-formatter",
        args = {
          "--language",
          "postgresql",
          "--config",
          vim.fn.expand("~/.config/nvim/sql-formatter.json"),
        },
        stdin = true,
      },
    },
  },
}
