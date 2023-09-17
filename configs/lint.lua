require("lint").linters_by_ft = {
    javascript = { "eslint" },
    typescript = { "eslint" },
}

vim.api.nvim_crate_autocmd({"BufWritePost"}, {
    callback = function()
        require("lint").try_lint()
    end
})
