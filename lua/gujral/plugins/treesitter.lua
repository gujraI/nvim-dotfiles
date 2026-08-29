local ensure_installed = {
	"astro",
	"bash",
	"c",
	"cmake",
	"comment",
	"cpp",
	"css",
	"dockerfile",
	"diff",
	"gitignore",
	"go",
	"groovy",
	"html",
	"java",
	"javascript",
	"jsdoc",
	"json",
	"lua",
	"luadoc",
	"luap",
	"markdown",
	"markdown_inline",
	"passwd",
	"python",
	"query",
	"regex",
	"sql",
	"toml",
	"tsx",
	"typescript",
	"xml",
	"yaml",
}
return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	config = function()
		local ts = require('nvim-treesitter')
		ts.install(ensure_installed)
		ts.setup()
	end
}
