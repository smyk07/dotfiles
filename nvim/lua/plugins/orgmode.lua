return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    require("orgmode").setup({
      org_agenda_files = "~/orgfiles/*.org",
      org_default_notes_file = "~/orgfiles/refile.org",
      win_split_mode = "tabnew",
    })
  end,
}
