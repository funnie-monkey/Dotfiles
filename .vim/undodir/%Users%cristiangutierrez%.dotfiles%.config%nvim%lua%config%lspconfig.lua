Vim�UnDo� ��B�����șo�$'�A�d��L���xR�U                                     e��F    _�                     &        ����                                                                                                                                                                                                                                                                                                                                                             e�my     �   %   '   8       5��    %                      �                     �    %                     �                     �    %                     �                    �    %                     �                     �    %                     �                     �    %                     �                    �    %                     �                     �    %                     �                     �    %                     �                     �    %   
                  �                     �    %   	                  �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                  	   �             	       �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                     �    %                     �                    5�_�                    &       ����                                                                                                                                                                                                                                                                                                                                                             e�m�    �   %   &          continue5��    %                      �      	               5�_�                            ����                                                                                                                                                                                                                                                                                                                                       !           V        e�m�    �             	   		lua_ls = function()   &			require('lspconfig').lua_ls.setup({   $				capabilities = lsp_capabilities,   				---   				-- This is where you place   				-- your custom config   				---   			})   		end,5��           	               �      �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        e���     �                require('mason').setup({})   "require('mason-lspconfig').setup({   	ensure_installed = {},   	handlers = {   		default_setup,   	},   })5��                          k      |               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        e���    �                 5��                          k                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                       &           V        e��     �                local cmp = require('cmp')   cmp.setup({   	sources = {   		{name = 'nvim_lsp'},   	},   &	mapping = cmp.mapping.preset.insert({   7		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),   7		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),   5		['<C-y>'] = cmp.mapping.confirm({ select = true }),   )		["<C-space>"] = cmp.mapping.complete(),   		['<Tab>'] = nil,   		['<S-Tab>'] = nil,   	}),   	snippet = {   		expand = function(args)   +			require('luasnip').lsp_expand(args.body)   		end,   	},   })5��                          k      �              5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  V        e��H    �                Glocal lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()       &local default_setup = function(server)   &  require('lspconfig')[server].setup({   $    capabilities = lsp_capabilities,     })   end5��                          �      �               5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             e���     �                 5��                          �                     5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             e���    �   
              5��    
                      �                     5�_�   
                 
        ����                                                                                                                                                                                                                                                                                                                                                             e��g     �   
            �   
            5��    
                      �                    5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             e��m     �   
      $    5��    
                      �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��r     �      !          &            local cmp = require('cmp')               cmp.setup({                   sources = {   (                    {name = 'nvim_lsp'},                   },   5                mapping = cmp.mapping.preset.insert({   I                    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),   I                    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),   G                    ['<C-y>'] = cmp.mapping.confirm({ select = true }),   ;                    ["<C-space>"] = cmp.mapping.complete(),   $                    ['<Tab>'] = nil,   &                    ['<S-Tab>'] = nil,                   }),                   snippet = {   +                    expand = function(args)   @                        require('luasnip').lsp_expand(args.body)                       end,                   },               })   S            local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()    5��                          �                     �                          �                     �                         �                    �                         �                    �                         �                    �                                              �                         *                    �                         h                    �                         �                    �                         �                    �                                             �                         +                    �                         F                    �                         N                    �                         ^                    �                         ~                    �                         �                    �                         �                    �                          �                     �                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             e��w    �      &              2            local default_setup = function(server)   4                require('lspconfig')[server].setup({   4                    capabilities = lsp_capabilities,                   })               end5��                                                �    !                     :                    �    "                     c                    �    #                     �                    �    $                      �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                       %           V        e��r    �                local cmp = require('cmp')   cmp.setup({       sources = {           {name = 'nvim_lsp'},       },   )    mapping = cmp.mapping.preset.insert({   =        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),   =        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),   ;        ['<C-y>'] = cmp.mapping.confirm({ select = true }),   /        ["<C-space>"] = cmp.mapping.complete(),           ['<Tab>'] = nil,           ['<S-Tab>'] = nil,       }),       snippet = {           expand = function(args)   4            require('luasnip').lsp_expand(args.body)           end,       },   })   Glocal lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()       &local default_setup = function(server)   (    require('lspconfig')[server].setup({   (        capabilities = lsp_capabilities,       })   end5��                          �      �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e���   	 �          
   	   *vim.api.nvim_create_autocmd('LspAttach', {       desc = 'LSP actions',       callback = function(event)   6        local opts = { buffer = bufnr, remap = false }       k        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = "Jump to definition" })   J        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)   c        vim.keymap.set("n", "<leader>vr", function() vim.lsp.buf.rename() end, { desc = "Rename" })       end�   
               �                  *vim.api.nvim_create_autocmd('LspAttach', {     desc = 'LSP actions',     callback = function(event)   0    local opts = {buffer = bufnr, remap = false}       e    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, {desc = "Jump to definition"})   F    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)   ]    vim.keymap.set("n", "<leader>vr", function() vim.lsp.buf.rename() end, {desc = "Rename"})   end   })    5��            
       
               �      �      �    
                      �                     �                              �      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e���     �                 �              5��                                                  �                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��     �                  �               5��                          �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��   
 �                  �                  return {   +	vim.api.nvim_create_autocmd("LspAttach", {   		desc = "LSP actions",   		callback = function(event)   1			local opts = { buffer = bufnr, remap = false }       '			vim.keymap.set("n", "gd", function()   				vim.lsp.buf.definition()   (			end, { desc = "Jump to definition" })   &			vim.keymap.set("n", "K", function()   				vim.lsp.buf.hover()   			end, opts)   /			vim.keymap.set("n", "<leader>vr", function()   				vim.lsp.buf.rename()   			end, { desc = "Rename" })   		end,   	}),   }�               *vim.api.nvim_create_autocmd("LspAttach", {   	desc = "LSP actions",   	callback = function(event)   0		local opts = { buffer = bufnr, remap = false }       &		vim.keymap.set("n", "gd", function()   			vim.lsp.buf.definition()   '		end, { desc = "Jump to definition" })   %		vim.keymap.set("n", "K", function()   			vim.lsp.buf.hover()   		end, opts)   .		vim.keymap.set("n", "<leader>vr", function()   			vim.lsp.buf.rename()   		end, { desc = "Rename" })   	end,   })5��                       	       �      �      �                                 �      G      �                          G                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��     �                }5��                          E                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��     �                 return {5��                                   	               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��     �                .    vim.api.nvim_create_autocmd("LspAttach", {5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��     �                -   vim.api.nvim_create_autocmd("LspAttach", {5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��     �                ,  vim.api.nvim_create_autocmd("LspAttach", {5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��     �                + vim.api.nvim_create_autocmd("LspAttach", {5��                                                  5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                             e��    �                 *vim.api.nvim_create_autocmd("LspAttach", {           desc = "LSP actions",   "        callback = function(event)   :            local opts = { buffer = bufnr, remap = false }       0            vim.keymap.set("n", "gd", function()   (                vim.lsp.buf.definition()   1            end, { desc = "Jump to definition" })   /            vim.keymap.set("n", "K", function()   #                vim.lsp.buf.hover()               end, opts)   8            vim.keymap.set("n", "<leader>vr", function()   $                vim.lsp.buf.rename()   %            end, { desc = "Rename" })           end,       }),5��                         +                     �                         E                     �                         d                     �                         �                     �                         �                     �                         �                     �                                             �    	                     H                    �    
                     h                    �                         {                    �                         �                    �                         �                    �                         �                    �                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��    �                 }),5��                         �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        e��E    �                 *vim.api.nvim_create_autocmd("LspAttach", {       desc = "LSP actions",       callback = function(event)   6        local opts = { buffer = bufnr, remap = false }       ,        vim.keymap.set("n", "gd", function()   $            vim.lsp.buf.definition()   -        end, { desc = "Jump to definition" })   +        vim.keymap.set("n", "K", function()               vim.lsp.buf.hover()           end, opts)   4        vim.keymap.set("n", "<leader>vr", function()                vim.lsp.buf.rename()   !        end, { desc = "Rename" })       end,   })5��                                  �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e���     �                 *vim.api.nvim_create_autocmd('LspAttach', {       desc = 'LSP actions',       callback = function(event)   6        local opts = { buffer = bufnr, remap = false }       k        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = "Jump to definition" })   J        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)   c        vim.keymap.set("n", "<leader>vr", function() vim.lsp.buf.rename() end, { desc = "Rename" })       end   })    �   
           �       
   
      *vim.api.nvim_create_autocmd("LspAttach", {   	desc = "LSP actions",   	callback = function(event)   0		local opts = { buffer = bufnr, remap = false }       &		vim.keymap.set("n", "gd", function()   			vim.lsp.buf.definition()   '		end, { desc = "Jump to definition" })   %		vim.keymap.set("n", "K", function()   			vim.lsp.buf.hover()   		end, opts)   .		vim.keymap.set("n", "<leader>vr", function()   			vim.lsp.buf.rename()   		end, { desc = "Rename" })   	end,5��            
       
               �      �      �    
                      �                     �                              �      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e���     �      	   %          �      
   &      
    vim.ke5��                          �                     �                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       e�i�     �              5��                          k      |               5��