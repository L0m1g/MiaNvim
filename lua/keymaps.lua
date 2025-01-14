--local map = vim.api.nvim_set_keymap

--local options = { noremap = true }
--local cmd_options = { noremap = true, silent = true }

vim.g.mapleader = ","
vim.g.maplocalleader = "," -- with <leader> eg. 'map <leader>n :new<cr>'


local function toggle_nvim_tree_and_zen()
    local view = require("nvim-tree.view")
    if view.is_visible() then
        vim.cmd("NvimTreeToggle")  -- Ferme NvimTree
    else
        vim.cmd("ZenMode")         -- Active ZenMode
        vim.cmd("NvimTreeToggle")  -- Ouvre NvimTree
        vim.defer_fn(function()
            vim.cmd("NvimTreeFocus")  -- Forcer le focus après ouverture
        end, 100)  -- Délai de 100ms
    end
end

vim.keymap.set("n", "<Leader>e", toggle_nvim_tree_and_zen, { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>r", ":lua ReloadConfig()<CR>", { noremap = true, silent = true })

-- Indenter avec Tab en mode normal et visuel
vim.keymap.set('n', '<Tab>', '>>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', '<<', { noremap = true, silent = true })

-- Indenter plusieurs lignes en mode visuel
vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true })

-- Corrige les conflits en déplaçant <gc>
vim.keymap.set("n", "<gC>", "<cmd>CommentToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<gC>", "<cmd>CommentToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        local ok = pcall(require, "toggleterm")
        if not ok then
            print("❌ ToggleTerm n'est pas chargé")
            return
        end

        -- Terminal flottant
        vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm direction=float<CR>", { noremap = true, silent = true })
        -- Terminal horizontal
        vim.keymap.set("n", "<C-h>", "<cmd>ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true })
        -- Terminal vertical
        vim.keymap.set("n", "<C-v>", "<cmd>ToggleTerm direction=vertical<CR>", { noremap = true, silent = true })
    end,
})
