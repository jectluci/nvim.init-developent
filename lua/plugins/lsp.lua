return {
--LSP
{ 'neovim/nvim-lspconfig' },
{ 'williamboman/nvim-lsp-installer' },
{ 'folke/lsp-colors.nvim' },
--NEOCONF 
{
  "folke/neoconf.nvim",
},

--CMP 
{
  "neovim/nvim-lspconfig",
  events = "VeryLazy",
},
{ 'hrsh7th/cmp-nvim-lsp' },
{ 'hrsh7th/cmp-buffer' },
{ 'hrsh7th/cmp-path' },
{ 'hrsh7th/cmp-cmdline' },
{
  "hrsh7th/nvim-cmp",
},
  {'hrsh7th/cmp-emoji'},
{ 'hrsh7th/cmp-vsnip' },
{ 'hrsh7th/vim-vsnip' },
{ 'saadparwaiz1/cmp_luasnip' },
{ 'SirVer/ultisnips' },
{ 'quangnguyen30192/cmp-nvim-ultisnips' },
{ 'dcampos/nvim-snippy' },
{ 'dcampos/cmp-snippy' },
{ 'onsails/lspkind.nvim' },
--Mason
{ "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "mypy",
      "ruff",
      "pyright"
    }
  }
},
{
    "williamboman/mason-lspconfig.nvim"},
--TaildWindCss
{
  "roobert/tailwindcss-colorizer-cmp.nvim",
  -- optionally, override the default options:
  config = function()
    require("tailwindcss-colorizer-cmp").setup({
      color_square_width = 2,
    })
  end
},

--Lua
{ 'liuchengxu/vista.vim' },

-- {
--   "utilyre/barbecue.nvim",
--   name = "barbecue",
--   version = "*",
--   dependencies = {
--     "SmiteshP/nvim-navic",
--     "nvim-tree/nvim-web-devicons", -- optional dependency
--   },
-- },
--Syntaxis
{ 'scrooloose/syntastic' },
{ 'sheerun/vim-polyglot' },
--Angular 
{ 'joeveiga/ng.nvim'},

}
