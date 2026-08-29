return {
  'dmtrKovalenko/fff',
  build = function()
    -- downloads a prebuilt binary or falls back to cargo build
    require("fff.download").download_or_build_binary()
  end,
  opts = {
    debug = {
      enabled = true,
      show_scores = true,
    },
		hl = {
			cursor = 'CursorLine',
		},
  },
  lazy = false, -- the plugin lazy-initialises itself
  keys = {
    { "<leader>pf", function() require('fff').find_files() end, desc = 'FFFind files'},
    { "<leader>pg", function() require('fff').live_grep() end, desc = 'LiFFFe grep'},
    { "<leader>ps", function() require('fff').live_grep({ grep = { modes = { 'fuzzy', 'plain' } } }) end, desc = 'Live fffuzy grep'},
    { "<leader>fw", function() require('fff').live_grep_under_cursor() end, mode = { 'n', 'x' }, desc = 'Search current word / selection'},
    { "<leader>ft", function() require("fff").live_grep({ "TODO|TO FIX|NOTE|BUG|ERROR" }) end, desc = "Search TODOs, notes, bugs & errors" },
  }
}
