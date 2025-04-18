-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--             transparent_background = true,
--       flavour = "mocha",
--       integrations = {
--         treesitter = true,
--         native_lsp = { enabled = true },
--       },
--     })
--     vim.cmd.colorscheme("catppuccin")
--   end,
-- }
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Default ke tema mocha
      integrations = {
        treesitter = true,
        native_lsp = { enabled = true },
      },
    })

    -- Ambil flavour yang dipilih
    local flavour = require("catppuccin").options.flavour

    -- Hanya buat transparan jika bukan latte
    if flavour ~= "latte" then
      vim.opt.background = "dark"
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    else
      vim.opt.background = "light"
    end

    vim.cmd.colorscheme("catppuccin")
  end,
}

