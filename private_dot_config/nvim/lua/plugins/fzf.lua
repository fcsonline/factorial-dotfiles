require("fzf-lua").setup({
	lsp = {
		-- make lsp requests synchronous so they work with null-ls
		async_or_timeout = 3000,
	},
	winopts = {
    height           = 0.85,            -- window height
    width            = 0.80,            -- window width
    row              = 0.35,            -- window row position (0=top, 1=bottom)
    col              = 0.50,            -- window col position (0=left, 1=right)

		preview = {
			layout = "horizontal",
		},
	},
	previewers = {
		bat = {
			theme = "Catppuccin",
		},
	},
})
