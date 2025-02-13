return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.verible.setup({
        capabilities = capabilities,
      })
      lspconfig.svlangserver.setup({
        capabilities = capabilities,
      })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gh", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
      vim.keymap.set("n", "<leader>gk", vim.lsp.buf.signature_help, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
