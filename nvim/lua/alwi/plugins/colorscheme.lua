return {
  'sainnhe/gruvbox-material',
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_foreground = "original"
    vim.g.gruvbox_material_background = "medium"
    vim.g.gruvbox_material_enable_italic = true
    vim.g.gruvbox_material_better_performance = true

    vim.cmd.colorscheme('gruvbox-material')
  end
}
