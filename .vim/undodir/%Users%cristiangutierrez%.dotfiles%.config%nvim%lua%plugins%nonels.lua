Vim�UnDo� ��F���l+\��`':����:{꣣~ʙ\                                                   e�@�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e��     �                   5��                                                  �                                                �                          	                      �                          	                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��     �                   �             �             5��                          	                      �                          	                      �                        &                      �                         +                      �                        >                      �                         ?                     �                         ?                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��E     �                �                       �             �             5��                          ?                      �                         ?                     �                  	       G               �       �                                               �                                              �                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��g     �                 5��                                               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��i     �                 return {       "nvimtools/none-ls.nvim",       config = function()   *        local null_ls = require("null-ls")       null_ls.setup({       sources = {   +        null_ls.builtins.formatting.stylua,   ,        null_ls.builtins.diagnostics.eslint,   *        null_ls.builtins.completion.spell,       },   })       end   }5��                          k                      �                         �                     �                         �                     �                         �                     �    	                                         �    
                     7                    �                          F                     5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             e��p     �   	   
          2                null_ls.builtins.completion.spell,5��    	                            3               5�_�                    	   -    ����                                                                                                                                                                                                                                                                                                                                                             e��     �      
         4                null_ls.builtins.diagnostics.eslint,5��       -                 �                     5�_�      	                 ,    ����                                                                                                                                                                                                                                                                                                                                                             e��    �      	         3                null_ls.builtins.formatting.stylua,�      	       5��       ,                 �                     5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             e��'     �                       �             5��                          %              	       �                          %                     �                         %              	       �                         .                     �                        =                    5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             e��    �                       vim.keymap.set('n', '5��                         C                     �       '                 M                    �       8                 ^                    5�_�   
                    8    ����                                                                                                                                                                                                                                                                                                                                                             e���    �               9        vim.keymap.set('n', '<leader>ff', vim.lsp.format)5��       8                  ^                     5�_�                       2    ����                                                                                                                                                                                                                                                                                                                                                             e���     �               =        vim.keymap.set('n', '<leader>ff', vim.lsp.format, {})5��       2                  X                     5�_�                       <    ����                                                                                                                                                                                                                                                                                                                               <          ?       v   ?    e���    �               A        vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format, {})5��       <                  b                     5�_�                       <    ����                                                                                                                                                                                                                                                                                                                               <          ?       v   ?    e���    �               =        vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format)�             5��       <                  b                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             e���    �      	                         �      	       �      	       5��                          �                      �                      #   �               #       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��    �                   "nvimtools/none-ls.nvim",       config = function()   *        local null_ls = require("null-ls")               null_ls.setup({               sources = {   3                null_ls.builtins.formatting.stylua,   9                null_ls.builtins.formatting.clang_format,   5                null_ls.builtins.diagnostics.cpplint,               },   
        })       W        vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format, { desc = 'Format file' })       end�                  �                  return {       "nvimtools/none-ls.nvim",       config = function()   *        local null_ls = require("null-ls")               null_ls.setup({               sources = {   3                null_ls.builtins.formatting.stylua,   9                null_ls.builtins.formatting.clang_format,   5                null_ls.builtins.diagnostics.cpplint,               },   
        })       U        vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format, {desc = 'Format file'})       end   }5��                                 �      �      �                          �                     �                       	       �      Z      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��o   	 �                   "nvimtools/none-ls.nvim",       config = function()   *        local null_ls = require("null-ls")               null_ls.setup({               sources = {   3                null_ls.builtins.formatting.stylua,   9                null_ls.builtins.formatting.clang_format,   5                null_ls.builtins.diagnostics.cpplint,               },   
        })       W        vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = "Format file" })       end,�                  �                  return {   	"nvimtools/none-ls.nvim",   	config = function()   $		local null_ls = require("null-ls")       		null_ls.setup({   			sources = {   '				null_ls.builtins.formatting.stylua,   -				null_ls.builtins.formatting.clang_format,   )				null_ls.builtins.diagnostics.cpplint,   			},   		})       Q		vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = "Format file" })   	end,   }5��                                 e      �      �                          �                     �                       	       �      V      5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             e�@�     �   
                            �             �   
          5��    
                                            �    
                  '                 '       5�_�                        7    ����                                                                                                                                                                                                                                                                                                                                                             e�@�    �   
            7                null_ls.builtins.formatting.ocamlformat5��    
   7                  7                     5��