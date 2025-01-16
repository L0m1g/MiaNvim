-- 📂 Configuration des fichiers .conf
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.conf",
    callback = function()
        vim.cmd([[
            syntax keyword confDirective foreground background cursor selection_background
            syntax match confComment /#.*/

            highlight link confDirective Keyword
            highlight link confComment Comment
        ]])
--        print(" Filetype 'conf' activé pour ce fichier")
    end,
})
