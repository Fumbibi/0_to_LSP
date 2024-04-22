-- fixing the loss of transparency in the background
-- can't get it to work on this terminal, but on others it would do the trick
function ColorMyPencils(color)
	color = color or "duskfox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
	-- vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
end

ColorMyPencils()
