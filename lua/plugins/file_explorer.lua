vim.pack.add({
	{ src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

local sidebar = {
	width = 25,
	min_width = 20,
	resize_step = 5,
}

local function resize_sidebar(delta)
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)

		if vim.bo[buf].filetype == "neo-tree" then
			local width = vim.api.nvim_win_get_width(win)
			vim.api.nvim_win_set_width(win, math.max(sidebar.min_width, width + delta))
			return
		end
	end
end

require("neo-tree").setup({
	close_if_last_window = true,
	popup_border_style = "rounded",
	enable_git_status = true,
	enable_diagnostics = true,
	window = {
		position = "left",
		width = sidebar.width,
	},
	filesystem = {
		follow_current_file = {
			enabled = true,
		},
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = false,
		},
		use_libuv_file_watcher = true,
	},
})

vim.keymap.set("n", "<leader>e", function()
	require("neo-tree.command").execute({ toggle = true, reveal = true, position = "left" })
end, { silent = true, desc = "Toggle Neo-tree sidebar" })

vim.keymap.set("n", "<C-Left>", function()
	resize_sidebar(-sidebar.resize_step)
end, { silent = true, desc = "Reduce Neo-tree width" })

vim.keymap.set("n", "<C-Right>", function()
	resize_sidebar(sidebar.resize_step)
end, { silent = true, desc = "Increase Neo-tree width" })
