return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>ff",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},

	--@module "conform"
	--@type conform.setupOpts
	opts = {
		formatters_by_ft = {
			astro = { "prettierd", "prettier", stop_after_first = true },
			c = { "clang_format" },
			css = { "prettierd", "prettier", stop_after_first = true },
			cpp = { "clang_format" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			go = { "gofmpt", "goimports" },
			python = { "black", "autoflake", "isort" },
			lua = { "stylua" },
			typescript = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			timeout_ms = 5000,
			lsp_format = "fallback",
		},
	},
}
