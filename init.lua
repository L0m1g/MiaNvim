require("lomig.core")
require("lomig.lazy")

-- Utiliser <Tab> pour l'auto-complétion
vim.api.nvim_set_keymap("i", "<Tab>",
  'pumvisible() ? "\\<C-n>" : "\\<Tab>"',
  { noremap = true, expr = true })

vim.api.nvim_set_keymap("i", "<S-Tab>",
  'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"',
  { noremap = true, expr = true })

-- Naviguer vers les diagnostics précédents et suivants
vim.api.nvim_set_keymap("n", "[g", "<Plug>(coc-diagnostic-prev)", { silent = true })
vim.api.nvim_set_keymap("n", "]g", "<Plug>(coc-diagnostic-next)", { silent = true })

-- Afficher les informations sur l'élément sous le curseur
vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", { silent = true })

-- Renommer une variable
vim.api.nvim_set_keymap("n", "<leader>rn", ":CocRename<CR>", { noremap = true, silent = true })
