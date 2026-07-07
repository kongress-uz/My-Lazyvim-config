return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 30, -- Daraxt kengligi
      mappings = {
        ["o"] = "open", -- "o" tugmasi bilan faylni ochish
      },
    },
    filesystem = {
      filtered_items = {
        visible = true, -- Yashirin fayllarni ko'rsatish
        hide_dotfiles = false,
      },
    },
  },
}
