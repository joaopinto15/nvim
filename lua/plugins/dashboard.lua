vim.pack.add({
	{ src = "https://github.com/folke/snacks.nvim" },
})

local dashboard_sections = {}
local dashboard_header = {
	{
		[[███╗   ██╗]],
		[[██╗   ██╗██╗███╗   ███╗]],
	},
	{
		[[████╗  ██║]],
		[[██║   ██║██║████╗ ████║]],
	},
	{
		[[██╔██╗ ██║]],
		[[██║   ██║██║██╔████╔██║]],
	},
	{
		[[██║╚██╗██║]],
		[[╚██╗ ██╔╝██║██║╚██╔╝██║]],
	},
	{
		[[██║ ╚████║]],
		[[ ╚████╔╝ ██║██║ ╚═╝ ██║]],
	},
	{
		[[╚═╝  ╚═══╝]],
		[[  ╚═══╝  ╚═╝╚═╝     ╚═╝]],
	},
}

for _, line in ipairs(dashboard_header) do
	table.insert(dashboard_sections, {
		align = "center",
		text = {
			{ line[1], hl = "SnacksDashboardHeaderBlue" },
			{ line[2], hl = "SnacksDashboardHeaderGreen" },
		},
	})
end

vim.list_extend(dashboard_sections, {
	{ section = "keys", gap = 1, padding = 1 },
	{ title = "Recent Files", section = "recent_files", limit = 5, padding = 1 },
})

require("snacks").setup({
		dashboard = {
			enabled = true,
			width = 64,
			preset = {
				keys = {
					{ key = "f", icon = " ", desc = "Find files", action = ":Telescope find_files" },
					{ key = "g", icon = "󰱼 ", desc = "Live grep", action = ":Telescope live_grep" },
					{ key = "c", icon = " ", desc = "Open config", action = ":edit ~/.config/nvim" },
					{ key = "n", icon = " ", desc = "New file", action = ":enew" },
					{ key = "q", icon = " ", desc = "Quit", action = ":qa" },
				},
			},
		sections = dashboard_sections,
	},
})

vim.keymap.set("n", "<leader>st", function()
	Snacks.dashboard.open()
end, { desc = "Open dashboard" })
