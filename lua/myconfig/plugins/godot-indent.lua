return {
	"habamax/vim-godot",
	event = "BufEnter *.gd",
	config = function()
		local null_ls = require("null-ls")
		null_ls.register({
			-- gdlint didn't work
			-- null_ls.builtins.diagnostics.gdlint,
			null_ls.builtins.formatting.gdformat,
		})

		vim.cmd([[
  setlocal foldmethod=expr
  setlocal tabstop=4
  setlocal shiftwidth=4
  setlocal indentexpr=
  ]])
	end,
}
