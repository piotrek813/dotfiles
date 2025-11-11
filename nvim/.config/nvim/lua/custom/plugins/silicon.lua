return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	opts = {
		disable_defaults = true,
		theme = "GitHub",
		to_clipboard = true,
		language = function()
			return vim.bo.filetype
		end,
	},
}
