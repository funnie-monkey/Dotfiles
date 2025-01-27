return {
    --[[
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		dependencies = "nvim-treesitter/nvim-treesitter",
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		opts = {
			max_lines = 2,
			multiline_threshold = 2,
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "cpp", "python", "lua", "vim", "vimdoc", "query" },

				sync_install = false,

				auto_install = true,

				ignore_install = { "javascript" },

				highlight = {
					enable = true,
					disable = { "rust" },
					additional_vim_regex_highlighting = false,
				},

				textobjects = {
					select = {
						enable = true,

						lookahead = true,

						keymaps = {
							["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter region" },
							["ia"] = { query = "@parameter.inner", desc = "Select  inner part of a parameter region" },
							["af"] = { query = "@function.outer", desc = "Select outer part of a function" },
							["if"] = { query = "@function.inner", desc = "Select inner part of a function" },
							["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
							["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
							["ii"] = { query = "@conditional.inner", desc = "Select outer part of a conditional" },
							["ai"] = { query = "@conditional.outer", desc = "Select  inner part of a conditional" },
							["il"] = { query = "@loop.inner", desc = "Select outer part of a loop" },
							["al"] = { query = "@loop.outer", desc = "Select inner part of a loop" },
							["at"] = { query = "@comment.outer", desc = "Select outer part of a comment region" },
						},
						include_surrounding_whitespace = false,
					},
				},
			})
		end,
	},
    ]]
    --

    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        dependencies = "nvim-treesitter/nvim-treesitter",
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- A list of parser names, or "all" (the listed parsers MUST always be installed)
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
                auto_install = true,
                highlight = {
                    enable = true,
                    disable = function(lang, buf)
                        local max_filesize = 100 * 1024 -- 100 KB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,
                    additional_vim_regex_highlighting = false,
                },

                textobjects = {
                    select = {
                        enable = true,

                        lookahead = true,

                        keymaps = {
                            ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter region" },
                            ["ia"] = { query = "@parameter.inner", desc = "Select  inner part of a parameter region" },
                            ["af"] = { query = "@function.outer", desc = "Select outer part of a function" },
                            ["if"] = { query = "@function.inner", desc = "Select inner part of a function" },
                            ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
                            ["ii"] = { query = "@conditional.inner", desc = "Select outer part of a conditional" },
                            ["ai"] = { query = "@conditional.outer", desc = "Select  inner part of a conditional" },
                            ["il"] = { query = "@loop.inner", desc = "Select outer part of a loop" },
                            ["al"] = { query = "@loop.outer", desc = "Select inner part of a loop" },
                            ["at"] = { query = "@comment.outer", desc = "Select outer part of a comment region" },
                        },
                        include_surrounding_whitespace = false,
                    },
                },
            })
        end,
    },
}
