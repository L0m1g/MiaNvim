--  Indentation propre
vim.opt_local.expandtab = true    -- Utilise des espaces au lieu de tabs
vim.opt_local.shiftwidth = 2      -- Indentation : 2 espaces
vim.opt_local.tabstop = 2         -- Largeur d'une tabulation : 2

--  Mise en surbrillance des instructions Docker
vim.cmd([[
    syntax keyword dockerfileInstruction FROM RUN CMD LABEL MAINTAINER EXPOSE ENV ADD COPY ENTRYPOINT VOLUME USER WORKDIR ARG ONBUILD STOPSIGNAL HEALTHCHECK SHELL
    highlight link dockerfileInstruction Keyword
]])

-- 🛠️ Autoformat avec hadolint (si installé)
if vim.fn.executable("hadolint") == 1 then
    vim.api.nvim_create_autocmd("BufWritePost", {
        pattern = "Dockerfile",
        callback = function()
            vim.cmd("!hadolint %")
        end,
    })
end
