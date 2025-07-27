-- ~/.config/nvim/lua/plugins/dadbod-ui.lua
return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    "tpope/vim-dadbod",
    "kristijanhusak/vim-dadbod-completion",
  },
  init = function()
    vim.g.db_ui_save_location = "~/repositories/cathotheque/sql"
  end,
}
