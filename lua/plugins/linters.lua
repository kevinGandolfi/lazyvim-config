-- ~/.config/nvim/lua/plugins/linter.lua
return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    linters_by_ft = {
      sql = { "sqlfluff" },
      javascript = { "eslint" },
    },
  },
  config = function(_, opts)
    local lint = require("lint")
    lint.linters_by_ft = opts.linters_by_ft
  end,
}
