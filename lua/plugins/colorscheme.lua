vim.pack.add({
	{ src = "https://github.com/navarasu/onedark.nvim" },
})

require("onedark").setup({
	style = "dark",
	term_colors = true,
	code_style = {
		comments = "italic",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},
	highlights = {
		LspInlayHint = { fmt = "italic" },
		NotificationInfo = { bg = "NONE" },
		NotificationWarning = { bg = "NONE" },
		NotificationError = { bg = "NONE" },
		NeoTreeNormal = { bg = "NONE" },
		NeoTreeNormalNC = { bg = "NONE" },
		NeoTreeEndOfBuffer = { bg = "NONE" },
		NeoTreeWinSeparator = { bg = "NONE" },
		NeoTreeDirectoryIcon = { fg = "#61afef" },
		NeoTreeDirectoryName = { fg = "#61afef" },
		NeoTreeRootName = { fg = "#c678dd", fmt = "bold" },
		NvimTreeNormal = { bg = "NONE" },
		NvimTreeNormalNC = { bg = "NONE" },
		NvimTreeEndOfBuffer = { bg = "NONE" },
		NvimTreeWinSeparator = { bg = "NONE" },
		NvimTreeFolderIcon = { fg = "#61afef" },
		NvimTreeFolderName = { fg = "#61afef" },
		NvimTreeRootFolder = { fg = "#c678dd", fmt = "bold" },
		SnacksDashboardNormal = { fg = "#abb2bf", bg = "NONE" },
		SnacksDashboardHeader = { fg = "#61afef", bg = "NONE" },
		SnacksDashboardHeaderBlue = { fg = "#61afef", bg = "NONE", fmt = "bold" },
		SnacksDashboardHeaderGreen = { fg = "#98c379", bg = "NONE", fmt = "bold" },
		SnacksDashboardTitle = { fg = "#c678dd", bg = "NONE", fmt = "bold" },
		SnacksDashboardIcon = { fg = "#e5c07b", bg = "NONE" },
		SnacksDashboardDesc = { fg = "#abb2bf", bg = "NONE" },
		SnacksDashboardKey = { fg = "#98c379", bg = "NONE", fmt = "bold" },
		SnacksDashboardFile = { fg = "#abb2bf", bg = "NONE" },
		SnacksDashboardDir = { fg = "#61afef", bg = "NONE" },
		SnacksDashboardFooter = { fg = "#5c6370", bg = "NONE", fmt = "italic" },
	},
})

require("onedark").load()
