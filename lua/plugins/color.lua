return {
  -- Configure LazyVim to load the Ayu color scheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",  -- This should be "ayu" if you have the Ayu theme plugin
    },
  },
  -- Ayu color scheme plugin
  {
    "ayu-theme/ayu-vim",
    config = function()
      -- Optional: Set the theme to dark or light
      vim.g.ayu_theme = 'dark'  -- or 'light' based on your preference
    end,
  },
}

