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

vim.keymap.set("n", "<Leader>e", toggle_nvim_tree_and_zen, { noremap = true, silent = true , desc= " NvimTree"})
vim.keymap.set("n", "<Leader>r", ":lua ReloadConfig()<CR>", { noremap = true, silent = true })

-- 🔄 Navigation entre buffers en mode NORMAL
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "➡️ Buffer suivant" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "⬅️ Buffer précédent" })

-- 📝 Indentation en mode INSERT et VISUEL
vim.keymap.set("i", "<Tab>", "<Tab>", { desc = "➡️ Tabulation" })
vim.keymap.set("v", "<Tab>", ">gv", { desc = "➡️ Indenter la sélection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "⬅️ Désindenter la sélection" })

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

-- vsplit for buffers
vim.keymap.set("n", "<leader>bv", ":vsplit | bnext<CR>", { desc = "📂 Vsplit buffer suivant" })
vim.keymap.set("n", "<leader>bh", ":split | bnext<CR>", { desc = "📂 Vsplit buffer suivant" })
vim.keymap.set("n", "<leader>Q", ":bd<CR>", { noremap = true, silent = true, desc = "Fermer buffer et fenêtre" })
