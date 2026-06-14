vim.pack.add({
	{ src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
})

require("render-markdown").setup({
	file_types = { "markdown" },
})

vim.keymap.set("n", "<leader>mr", ":RenderMarkdown toggle<CR>", { desc = "Toggle Markdown render" })
