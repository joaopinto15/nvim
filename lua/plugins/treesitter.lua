vim.pack.add({
	{ src = "https://github.com/reybits/ts-forge.nvim" },
})

require("ts-forge").setup({
	auto_install = false,
	ensure_installed = {
		"bash",
		"c",
		"diff",
		"html",
		"javascript",
		"jsdoc",
		"json",
		"lua",
		"luadoc",
		"luap",
		"markdown",
		"markdown_inline",
		"query",
		"regex",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"vimdoc",
		"yaml",
	},
})

vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		pcall(vim.treesitter.start)
	end,
})
