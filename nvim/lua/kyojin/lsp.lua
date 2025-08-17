-- Mason setup
require("mason").setup()

-- Make sure Mason knows about your desired LSP servers
require("mason-lspconfig").setup {
  ensure_installed = {
    "html",
    "cssls",
    "gopls"
  }
}

-- nvim-cmp setup
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

-- LSP config
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')

-- Servers
local servers = { "html", "cssls", "gopls" }
for _, server in ipairs(servers) do
  lspconfig[server].setup {
    capabilities = capabilities,
  }
end

