return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      elixir = { "mix" },
      eex = { "mix" },
      heex = { "mix" },
    },
    formatters = {
      mix = {
        command = "mix",
        args = { "format", "-" },
        stdin = true,
      },
    },
  },
}
