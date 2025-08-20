return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    init = function()
      local ok, m = pcall(require, "catppuccin.groups.integrations.bufferline")
      if ok and m and m.get_theme and m.get == nil then
        m.get = m.get_theme
      end
    end,
    opts = {
      custom_highlights = function(colors)
        return {
          Comment = { fg = colors.grey, italic = true },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
