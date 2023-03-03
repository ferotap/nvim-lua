
local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

wk.setup{}
wk.register({
  f = {
    name = "Telescope",
    b = { "<cmd>Telescope buffers<cr>", "Select buffer" },
    f = { "<cmd>Telescope find_files<cr>", "Find file" },
    g = { "<cmd>Telescope git_files<cr>", "Find git file" },
    h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
    m = { "<cmd>Telescope marks<cr>", "Show marks" },
    p = { "<cmd>Telescope projects<cr>", "Projects" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open recent file"},
    R = { "<cmd>Telescope registers<cr>", "Show registers"},
    a = { "<cmd>Telescope live_grep_args<cr>", "Search text with args"},
    s = { "<cmd>Telescope live_grep<cr>", "Search text"},
    z = { "<cmd>Telescope spell_suggest<cr>", "Spelling suggestions"},
    n = { "New File" }, -- just a label. don't create any mapping
    e = "Edit File", -- same as above
    ["1"] = "which_key_ignore",  -- special label to hide it in the popup
  },
}, { prefix = "<leader>" })
