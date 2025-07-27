return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = false,
    formatters_by_ft = {
      sql = { "sqlfluff" },
      pgsql = { "sqlfluff" },
    },
    formatters = {
      sqlfluff = {
        command = "sqlfluff",
        args = function()
          return {
            "fix",
            "$FILENAME",
            "--dialect",
            "postgres",
            "--force",
            "--disable-progress-bar",
          }
        end,
        stdin = false,
      },
    },
  },
}
