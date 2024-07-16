return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
      },
    },
    keys = {
      -- disable the keymap to grep files
      { "<leader>/", false },
      -- change a keymap
      {
        "<leader>fw",
        function()
          require("telescope.builtin").find_files()
        end,
        "Find words",
      },
      {
        "<leader>fW",
        function()
          require("telescope.builtin").live_grep({
            additional_args = function(args)
              return vim.list_extend(args, { "--hidden", "--no-ignore" })
            end,
          })
        end,
        "Find words in all files",
      },
    },
  },
}
