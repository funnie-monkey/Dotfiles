Vim�UnDo� AW�7��+6�G~���_@"�
�!J��   �       �                           e��    _�                     /        ����                                                                                                                                                                                                                                                                                                                                                             eǥ�     �   /   1   �    �   /   0   �    5��    /                      ]              A       5�_�                    u       ����                                                                                                                                                                                                                                                                                                                                                             eǥ�     �   u   w   �    �   u   v   �    5��    u                      �
              A       5�_�                    {       ����                                                                                                                                                                                                                                                                                                                                                             eǥ�     �   {   }   �    �   {   |   �    5��    {                      J              A       5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             eǥ�     �   �   �   �    �   �   �   �    5��    �                      �              A       5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             eǥ�    �   �   �          @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },5��    �                      �      A               5�_�                           ����                                                                                                                                                                                                                                                                                                                            0           0           V        eǧ�     �         �    �         �    5��                          a              A       5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            1           1           V        eǧ�    �   �   �   �    �   �   �   �    5��    �                      �              A       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��     �         �    5��                          ;                     �                         F                     �       
                  E                     �       	                  D                     �                         C                     �                         B                     �                         A                     �                         @                     �                         ?                     �                         >                     �                         =                     �                         <                     �                          ;                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��     �         �    �         �    5��                          ;              M       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��     �                 5��                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             e��    �      �   �   �       {   "        "williamboman/mason.nvim",           dependencies = {   0            "williamboman/mason-lspconfig.nvim",   
        },           config = function()   &            require("mason").setup({})       .            require("mason-lspconfig").setup({   $                ensure_installed = {                       "clangd",                       "pyright",                       "cmake",                   },   .                automatic_installation = true,               })   X            vim.keymap.set("n", "<leader>mo", "<cmd>Mason<CR>", { desc = "Open Mason" })           end,       },           {           "folke/neodev.nvim",   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },           config = function()   D            -- IMPORTANT: make sure to setup neodev BEFORE lspconfig   %            require("neodev").setup({   S                -- add any options here, or leave empty to use the default settings               })       2            -- then setup your lsp server as usual   2            local lspconfig = require("lspconfig")       ?            -- example to setup lua_ls and enable call snippets   $            lspconfig.lua_ls.setup({                   settings = {                       Lua = {   &                        completion = {   4                            callSnippet = "Replace",                           },                       },                   },               })           end,       },           {           "hrsh7th/nvim-cmp",   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },           dependencies = {   $            "neovim/nvim-lspconfig",   #            "hrsh7th/cmp-nvim-lsp",               "L3MON4D3/LuaSnip",   
        },           config = function()   &            local cmp = require("cmp")   S            local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()   2            local lspconfig = require("lspconfig")       $            lspconfig.clangd.setup({   0                capabilities = lsp_capabilities,               })       #            lspconfig.cmake.setup({   0                capabilities = lsp_capabilities,               })       $            lspconfig.lua_ls.setup({   0                capabilities = lsp_capabilities,               })       %            lspconfig.pyright.setup({   0                capabilities = lsp_capabilities,               })                   cmp.setup({   .                sources = cmp.config.sources({   *                    { name = "nvim_lsp" },                   }, {   (                    { name = "buffer" },                   }),   5                mapping = cmp.mapping.preset.insert({   I                    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),   I                    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),   G                    ["<C-y>"] = cmp.mapping.confirm({ select = true }),   ;                    ["<C-space>"] = cmp.mapping.complete(),   $                    ["<Tab>"] = nil,   &                    ["<S-Tab>"] = nil,                   }),                   snippet = {   +                    expand = function(args)   @                        require("luasnip").lsp_expand(args.body)                       end,                   },               })           6            vim.api.nvim_create_autocmd("LspAttach", {   %                desc = "LSP actions",   *                callback = function(event)   B                    local opts = { buffer = bufnr, remap = false }       8                    vim.keymap.set("n", "gd", function()   0                        vim.lsp.buf.definition()   9                    end, { desc = "Jump to definition" })   7                    vim.keymap.set("n", "K", function()   +                        vim.lsp.buf.hover()                       end, opts)   @                    vim.keymap.set("n", "<leader>vr", function()   ,                        vim.lsp.buf.rename()   -                    end, { desc = "Rename" })                   end,               })           end,       },           {   6        "nvim-treesitter/nvim-treesitter-textobjects",   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },   9        dependencies = "nvim-treesitter/nvim-treesitter",       },           {   2        "nvim-treesitter/nvim-treesitter-context",   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },       },           {   *        "nvim-treesitter/nvim-treesitter",   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },           build = ":TSUpdate",           config = function()   6            require("nvim-treesitter.configs").setup({   ]                ensure_installed = { "c", "cpp", "python", "lua", "vim", "vimdoc", "query" },       %                sync_install = false,       $                auto_install = true,       2                ignore_install = { "javascript" },                       highlight = {   "                    enable = true,   )                    disable = { "rust" },   >                    additional_vim_regex_highlighting = false,                   },                       textobjects = {                       select = {   &                        enable = true,       )                        lookahead = true,       #                        keymaps = {   v                            ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter region" },   w                            ["ia"] = { query = "@parameter.inner", desc = "Select  inner part of a parameter region" },   m                            ["af"] = { query = "@function.outer", desc = "Select outer part of a function" },   m                            ["if"] = { query = "@function.inner", desc = "Select inner part of a function" },   g                            ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },   g                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },   s                            ["ii"] = { query = "@conditional.inner", desc = "Select outer part of a conditional" },   t                            ["ai"] = { query = "@conditional.outer", desc = "Select  inner part of a conditional" },   e                            ["il"] = { query = "@loop.inner", desc = "Select outer part of a loop" },   e                            ["al"] = { query = "@loop.outer", desc = "Select inner part of a loop" },   r                            ["at"] = { query = "@comment.outer", desc = "Select outer part of a comment region" },                           },   ?                        include_surrounding_whitespace = false,                       },                   },               })           end,       },�   �               �               �   return {       	{   		"williamboman/mason.nvim",   		dependencies = {   '			"williamboman/mason-lspconfig.nvim",   		},   		config = function()   			require("mason").setup({})       %			require("mason-lspconfig").setup({   				ensure_installed = {   					"clangd",   					"pyright",   					"cmake",   				},   "				automatic_installation = true,   			})   Lvim.keymap.set("n", "<leader>mo", "<cmd>Mason<CR>", { desc = "Open Mason" })   		end,   	},       	{   		"folke/neodev.nvim",   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },   		config = function()   ;			-- IMPORTANT: make sure to setup neodev BEFORE lspconfig   			require("neodev").setup({   G				-- add any options here, or leave empty to use the default settings   			})       )			-- then setup your lsp server as usual   )			local lspconfig = require("lspconfig")       6			-- example to setup lua_ls and enable call snippets   			lspconfig.lua_ls.setup({   				settings = {   					Lua = {   						completion = {   							callSnippet = "Replace",   						},   					},   				},   			})   		end,   	},       	{   		"hrsh7th/nvim-cmp",   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },   		dependencies = {   			"neovim/nvim-lspconfig",   			"hrsh7th/cmp-nvim-lsp",   			"L3MON4D3/LuaSnip",   		},   		config = function()   			local cmp = require("cmp")   S            local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()   2            local lspconfig = require("lspconfig")       $            lspconfig.clangd.setup({   0                capabilities = lsp_capabilities,               })       #            lspconfig.cmake.setup({   0                capabilities = lsp_capabilities,               })       $            lspconfig.lua_ls.setup({   0                capabilities = lsp_capabilities,               })       %            lspconfig.pyright.setup({   0                capabilities = lsp_capabilities,               })       			cmp.setup({   "				sources = cmp.config.sources({   					{ name = "nvim_lsp" },   				}, {   					{ name = "buffer" },   				}),   )				mapping = cmp.mapping.preset.insert({   :					["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),   :					["<C-n>"] = cmp.mapping.select_next_item(cmp_select),   8					["<C-y>"] = cmp.mapping.confirm({ select = true }),   ,					["<C-space>"] = cmp.mapping.complete(),   					["<Tab>"] = nil,   					["<S-Tab>"] = nil,   				}),   				snippet = {   					expand = function(args)   .						require("luasnip").lsp_expand(args.body)   						end,   				},   			})           -			vim.api.nvim_create_autocmd("LspAttach", {   				desc = "LSP actions",   				callback = function(event)   3					local opts = { buffer = bufnr, remap = false }       )					vim.keymap.set("n", "gd", function()   						vim.lsp.buf.definition()   *					end, { desc = "Jump to definition" })   (					vim.keymap.set("n", "K", function()   						vim.lsp.buf.hover()   					end, opts)   1					vim.keymap.set("n", "<leader>vr", function()   						vim.lsp.buf.rename()   					end, { desc = "Rename" })   				end,   			})   		end,   	},       	{   0		"nvim-treesitter/nvim-treesitter-textobjects",   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },   3		dependencies = "nvim-treesitter/nvim-treesitter",   	},       	{   ,		"nvim-treesitter/nvim-treesitter-context",   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },   	},       	{   $		"nvim-treesitter/nvim-treesitter",   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },   		build = ":TSUpdate",   		config = function()   -			require("nvim-treesitter.configs").setup({   Q				ensure_installed = { "c", "cpp", "python", "lua", "vim", "vimdoc", "query" },       				sync_install = false,       				auto_install = true,       &				ignore_install = { "javascript" },       				highlight = {   					enable = true,   					disable = { "rust" },   /					additional_vim_regex_highlighting = false,   				},       				textobjects = {   					select = {   						enable = true,       						lookahead = true,       						keymaps = {   a							["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter region" },   b							["ia"] = { query = "@parameter.inner", desc = "Select  inner part of a parameter region" },   X							["af"] = { query = "@function.outer", desc = "Select outer part of a function" },   X							["if"] = { query = "@function.inner", desc = "Select inner part of a function" },   R							["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },   R							["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },   ^							["ii"] = { query = "@conditional.inner", desc = "Select outer part of a conditional" },   _							["ai"] = { query = "@conditional.outer", desc = "Select  inner part of a conditional" },   P							["il"] = { query = "@loop.inner", desc = "Select outer part of a loop" },   P							["al"] = { query = "@loop.outer", desc = "Select inner part of a loop" },   ]							["at"] = { query = "@comment.outer", desc = "Select outer part of a comment region" },   						},   -						include_surrounding_whitespace = false,   					},   				},   			})   		end,   	},   }5��            �      �               �      �      �    �                      �                     �           �      �      
       {      �      5�_�                   {       ����                                                                                                                                                                                                                                                                                                                                                             eǥ�     �   z   |        5��    z                            -               5�_�                    v       ����                                                                                                                                                                                                                                                                                                                                                             eǥ�    �   u   w        5��    u                      �
      A               5�_�      	              0       ����                                                                                                                                                                                                                                                                                                                                                             eǦ�     �   /   1        5��    /                      ]      A               5�_�      
           	   0       ����                                                                                                                                                                                                                                                                                                                                                             eǦ�     �   /   0   �              �   /   1   �              lazy=true,5��    /                      ]              	       �    /                  
   e              
       5�_�   	               
   0       ����                                                                                                                                                                                                                                                                                                                                                             eǦ�    �       �       �   return {           {   "        "williamboman/mason.nvim",           dependencies = {   0            "williamboman/mason-lspconfig.nvim",   
        },           config = function()   &            require("mason").setup({})       .            require("mason-lspconfig").setup({   $                ensure_installed = {                       "clangd",                       "pyright",                       "cmake",                   },   .                automatic_installation = true,               })           end,       },           {           "folke/neodev.nvim",           config = function()   D            -- IMPORTANT: make sure to setup neodev BEFORE lspconfig   %            require("neodev").setup({   S                -- add any options here, or leave empty to use the default settings               })       2            -- then setup your lsp server as usual   2            local lspconfig = require("lspconfig")       ?            -- example to setup lua_ls and enable call snippets   $            lspconfig.lua_ls.setup({                   settings = {                       Lua = {   &                        completion = {   4                            callSnippet = "Replace",                           },                       },                   },               })           end,       },           {           "hrsh7th/nvim-cmp",           lazy = true,           dependencies = {   $            "neovim/nvim-lspconfig",   #            "hrsh7th/cmp-nvim-lsp",               "L3MON4D3/LuaSnip",   
        },           config = function()   &            local cmp = require("cmp")   S            local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()   2            local lspconfig = require("lspconfig")       $            lspconfig.clangd.setup({   0                capabilities = lsp_capabilities,               })       #            lspconfig.cmake.setup({   0                capabilities = lsp_capabilities,               })       $            lspconfig.lua_ls.setup({   0                capabilities = lsp_capabilities,               })       %            lspconfig.pyright.setup({   0                capabilities = lsp_capabilities,               })                   cmp.setup({   .                sources = cmp.config.sources({   *                    { name = "nvim_lsp" },                   }, {   (                    { name = "buffer" },                   }),   5                mapping = cmp.mapping.preset.insert({   I                    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),   I                    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),   G                    ["<C-y>"] = cmp.mapping.confirm({ select = true }),   ;                    ["<C-space>"] = cmp.mapping.complete(),   $                    ["<Tab>"] = nil,   &                    ["<S-Tab>"] = nil,                   }),                   snippet = {   +                    expand = function(args)   @                        require("luasnip").lsp_expand(args.body)                       end,                   },               })           6            vim.api.nvim_create_autocmd("LspAttach", {   %                desc = "LSP actions",   *                callback = function(event)   B                    local opts = { buffer = bufnr, remap = false }       8                    vim.keymap.set("n", "gd", function()   0                        vim.lsp.buf.definition()   9                    end, { desc = "Jump to definition" })   7                    vim.keymap.set("n", "K", function()   +                        vim.lsp.buf.hover()                       end, opts)   @                    vim.keymap.set("n", "<leader>vr", function()   ,                        vim.lsp.buf.rename()   -                    end, { desc = "Rename" })                   end,               })           end,       },           {   6        "nvim-treesitter/nvim-treesitter-textobjects",   9        dependencies = "nvim-treesitter/nvim-treesitter",       },           {   @        event = { "BufReadPost", "BufWritePost", "BufNewFile" },       },           {   *        "nvim-treesitter/nvim-treesitter",           build = ":TSUpdate",           config = function()   6            require("nvim-treesitter.configs").setup({   ]                ensure_installed = { "c", "cpp", "python", "lua", "vim", "vimdoc", "query" },       %                sync_install = false,       $                auto_install = true,       2                ignore_install = { "javascript" },                       highlight = {   "                    enable = true,   )                    disable = { "rust" },   >                    additional_vim_regex_highlighting = false,                   },                       textobjects = {                       select = {   &                        enable = true,       )                        lookahead = true,       #                        keymaps = {   v                            ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter region" },   w                            ["ia"] = { query = "@parameter.inner", desc = "Select  inner part of a parameter region" },   m                            ["af"] = { query = "@function.outer", desc = "Select outer part of a function" },   m                            ["if"] = { query = "@function.inner", desc = "Select inner part of a function" },   g                            ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },   g                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },   s                            ["ii"] = { query = "@conditional.inner", desc = "Select outer part of a conditional" },   t                            ["ai"] = { query = "@conditional.outer", desc = "Select  inner part of a conditional" },   e                            ["il"] = { query = "@loop.inner", desc = "Select outer part of a loop" },   e                            ["al"] = { query = "@loop.outer", desc = "Select inner part of a loop" },   r                            ["at"] = { query = "@comment.outer", desc = "Select outer part of a comment region" },                           },   ?                        include_surrounding_whitespace = false,                       },                   },               })           end,       },   }    �   �   �        �      �   �   �   	{   		"williamboman/mason.nvim",   		dependencies = {   '			"williamboman/mason-lspconfig.nvim",   		},   		config = function()   			require("mason").setup({})       %			require("mason-lspconfig").setup({   				ensure_installed = {   					"clangd",   					"pyright",   					"cmake",   				},   "				automatic_installation = true,   			})   		end,   	},       	{   		"folke/neodev.nvim",   		config = function()   ;			-- IMPORTANT: make sure to setup neodev BEFORE lspconfig   			require("neodev").setup({   G				-- add any options here, or leave empty to use the default settings   			})       )			-- then setup your lsp server as usual   )			local lspconfig = require("lspconfig")       6			-- example to setup lua_ls and enable call snippets   			lspconfig.lua_ls.setup({   				settings = {   					Lua = {   						completion = {   							callSnippet = "Replace",   						},   					},   				},   			})   		end,   	},       	{   		"hrsh7th/nvim-cmp",   		lazy = true,   		dependencies = {   			"neovim/nvim-lspconfig",   			"hrsh7th/cmp-nvim-lsp",   			"L3MON4D3/LuaSnip",   		},   		config = function()   			local cmp = require("cmp")   J			local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()   )			local lspconfig = require("lspconfig")       			lspconfig.clangd.setup({   $				capabilities = lsp_capabilities,   			})       			lspconfig.cmake.setup({   $				capabilities = lsp_capabilities,   			})       			lspconfig.lua_ls.setup({   $				capabilities = lsp_capabilities,   			})       			lspconfig.pyright.setup({   $				capabilities = lsp_capabilities,   			})       			cmp.setup({   "				sources = cmp.config.sources({   					{ name = "nvim_lsp" },   				}, {   					{ name = "buffer" },   				}),   )				mapping = cmp.mapping.preset.insert({   :					["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),   :					["<C-n>"] = cmp.mapping.select_next_item(cmp_select),   8					["<C-y>"] = cmp.mapping.confirm({ select = true }),   ,					["<C-space>"] = cmp.mapping.complete(),   					["<Tab>"] = nil,   					["<S-Tab>"] = nil,   				}),   				snippet = {   					expand = function(args)   .						require("luasnip").lsp_expand(args.body)   						end,   				},   			})       -			vim.api.nvim_create_autocmd("LspAttach", {   				desc = "LSP actions",   				callback = function(event)   3					local opts = { buffer = bufnr, remap = false }       )					vim.keymap.set("n", "gd", function()   						vim.lsp.buf.definition()   *					end, { desc = "Jump to definition" })   (					vim.keymap.set("n", "K", function()   						vim.lsp.buf.hover()   					end, opts)   1					vim.keymap.set("n", "<leader>vr", function()   						vim.lsp.buf.rename()   					end, { desc = "Rename" })   				end,   			})   		end,   	},       	{   0		"nvim-treesitter/nvim-treesitter-textobjects",   3		dependencies = "nvim-treesitter/nvim-treesitter",   	},       	{   :		event = { "BufReadPost", "BufWritePost", "BufNewFile" },   	},       	{   $		"nvim-treesitter/nvim-treesitter",   		build = ":TSUpdate",   		config = function()   -			require("nvim-treesitter.configs").setup({   Q				ensure_installed = { "c", "cpp", "python", "lua", "vim", "vimdoc", "query" },       				sync_install = false,       				auto_install = true,       &				ignore_install = { "javascript" },       				highlight = {   					enable = true,   					disable = { "rust" },   /					additional_vim_regex_highlighting = false,   				},       				textobjects = {   					select = {   						enable = true,       						lookahead = true,       						keymaps = {   a							["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter region" },   b							["ia"] = { query = "@parameter.inner", desc = "Select  inner part of a parameter region" },   X							["af"] = { query = "@function.outer", desc = "Select outer part of a function" },   X							["if"] = { query = "@function.inner", desc = "Select inner part of a function" },   R							["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },   R							["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },   ^							["ii"] = { query = "@conditional.inner", desc = "Select outer part of a conditional" },   _							["ai"] = { query = "@conditional.outer", desc = "Select  inner part of a conditional" },   P							["il"] = { query = "@loop.inner", desc = "Select outer part of a loop" },   P							["al"] = { query = "@loop.outer", desc = "Select inner part of a loop" },   ]							["at"] = { query = "@comment.outer", desc = "Select outer part of a comment region" },   						},   -						include_surrounding_whitespace = false,   					},   				},   			})   		end,   	},5��            �      �               9            �    �                                           �           �      �      
              �      5��