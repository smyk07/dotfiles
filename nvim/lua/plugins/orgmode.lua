return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    require("orgmode").setup({
      org_agenda_files = "~/orgfiles/*/*.org",
      org_default_notes_file = "~/orgfiles/refile.org",
      win_split_mode = "horizontal",
      org_fold_enabled = false,
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "org",
      callback = function()
        vim.opt_local.foldenable = false
        vim.opt_local.foldlevel = 99
        vim.opt_local.foldmethod = "manual"
      end,
    })
  end,
}
