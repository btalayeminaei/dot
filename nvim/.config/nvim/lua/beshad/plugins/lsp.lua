return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "rubocop",
      }
    })

    -- After setting up mason-lspconfig you may set up servers via lspconfig
    require('lspconfig').lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {
              'vim',
            },
          },
        },
      },
    }

    require('lspconfig').rubocop.setup {
      cmd = { "bundle", "exec", "rubocop", "--lsp" },
    }
  end
}
