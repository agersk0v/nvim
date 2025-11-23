return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup {
                registries = {
                    'github:mason-org/mason-registry',
                   -- 'github:Crashdummy/mason-registry',
                }
            }
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
        config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"rust_analyzer",
                    "nil_ls",
                    "bash-language-server"
                    "gopls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
            vim.lsp.config("roslyn", {
                settings = {
                   --[[ 
                    ["csharp|background_analysis"] = {
                        background_analysis.dotnet_analyser_diagnostics_scope = fullSolution,
                        background_analysis.dotnet_compiler_diagnostics_scope = fullSolution,
                    },
                    --]]
                    ["csharp|inlay_hints"] = {
                        csharp_enable_inlay_hints_for_implicit_object_creation = true,
                        csharp_enable_inlay_hints_for_implicit_variable_types = true,
                        csharp_enable_inlay_hints_for_lambda_parameter_types = true,
                        csharp_enable_inlay_hints_for_types = true,
                        csharp_enable_inlay_hints_for_indexer_parameters = true,
                        csharp_enable_inlay_hints_for_literal_parameters = true,
                        csharp_enable_inlay_hints_for_object_creation_parameters = true,
                        csharp_enable_inlay_hints_for_other_parameters = true,
                        csharp_enable_inlay_hints_for_parameters = true,

                    },
                    ["csharp|code_lens"] = {
                        dotnet_enable_references_code_lens = true,
                    },
                    ["csharp|completion"] = {
                        dotnet_provide_regex_completions = true,
                        dotnet_show_completion_items_fom_unimported_namespaces = true,
                        dotnet_show_name_completion_suggestions = true,
                    },
                    ["csharp|formatting"] = {
                        dotnet_organize_imports_on_format = true,
                    },
                }
            }) 

            vim.keymap.set("n", "<leader>w", function()
            vim.cmd("w")
            vim.lsp.buf.format({async = true})
            end, {noremap = true, silent = true})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open Diagnostic Float" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
