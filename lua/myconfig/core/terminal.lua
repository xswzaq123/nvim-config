local isTerminalOpen = false

function ToggleTermX()
	if isTerminalOpen then
		-- close the terminal buffer
		vim.cmd("q!")
		isTerminalOpen = false
	else
		-- create a horizontal split
		vim.cmd("split")

		-- open a new terminal buffer in the split
		vim.cmd("term")

		-- set terminal size / line height
		vim.cmd("resize 10")

		isTerminalOpen = true
	end
end
