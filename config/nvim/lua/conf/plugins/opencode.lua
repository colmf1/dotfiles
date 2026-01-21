return {
	"AuenKr/open-code.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Required for git operations
	},
	config = function()
		require("opencode").setup({
			-- Terminal window settings
			window = {
				split_ratio = 0.4, -- Percentage of screen for the terminal window (height for horizontal, width for vertical splits)
				position = "vertical", -- Position of the window: "botright", "topleft", "vertical", "float", etc.
				enter_insert = true, -- Whether to enter insert mode when opening Opencode
				hide_numbers = true, -- Hide line numbers in the terminal window
				hide_signcolumn = true, -- Hide the sign column in the terminal window
			},
			-- File refresh settings
			refresh = {
				enable = true, -- Enable file change detection
				updatetime = 100, -- updatetime when Opencode is active (milliseconds)
				timer_interval = 1000, -- How often to check for file changes (milliseconds)
				show_notifications = true, -- Show notification when files are reloaded
			},
			-- Git project settings
			git = {
				use_git_root = true, -- Set CWD to git root when opening Opencode (if in git project)
			},
			-- Shell-specific settings
			shell = {
				separator = "&&", -- Command separator used in shell commands
				pushd_cmd = "pushd", -- Command to push directory onto stack (e.g., 'pushd' for bash/zsh, 'enter' for nushell)
				popd_cmd = "popd", -- Command to pop directory from stack (e.g., 'popd' for bash/zsh, 'exit' for nushell)
			},
			-- Command settings
			command = "opencode", -- Command used to launch Opencode
			-- Command variants
			command_variants = {
				-- Conversation management
				continue = "--continue", -- Resume the most recent conversation
				resume = "--resume", -- Display an interactive conversation picker

				-- Output options
				verbose = "--verbose", -- Enable verbose logging with full turn-by-turn output
			},
			-- Keymaps
			keymaps = {
				toggle = {
					normal = "<leader>a", -- Normal mode keymap for toggling Opencode
					terminal = "<C-o>", -- Terminal mode keymap for toggling Opencode
					variants = {
						-- variants are disabled by default to allow <leader>a as a direct toggle
						-- continue = "<leader>aC", -- Normal mode keymap for Opencode with continue flag
						-- verbose = "<leader>aV",  -- Normal mode keymap for Opencode with verbose flag
					},
				},
				window_navigation = true, -- Enable window navigation keymaps (<C-h/j/k/l>)
				scrolling = true, -- Enable scrolling keymaps (<C-f/b>) for page up/down
			},
		})
	end,
}
