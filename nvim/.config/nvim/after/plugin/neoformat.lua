--vim.cmd([[
--  augroup NeoformatDefaultBuffer
--    autocmd!
--    autocmd BufWritePre <buffer=1> Neoformat
--  augroup END
--]])

vim.api.nvim_create_autocmd("BufWritePre", {
    command = "Neoformat",
})
