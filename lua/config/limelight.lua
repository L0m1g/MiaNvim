vim.g.limelight_conceal_ctermfg = "gray" -- Couleur des lignes non actives en terminal
vim.g.limelight_conceal_guifg = "gray"   -- Couleur des lignes non actives en GUI

function ToggleLimelight()
  if vim.g.zen_mode_active then
    vim.cmd("Limelight")
  else
    vim.cmd("Limelight!")
  end
end

