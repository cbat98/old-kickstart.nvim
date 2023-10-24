return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app; yarn install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
        vim.keymap.set("n", "<leader>mp", vim.cmd.MarkdownPreviewToggle, { desc = '[M]arkdown [P]review' })
        vim.g.mkdp_theme = "light"
    end,
    ft = { "markdown" },
}
