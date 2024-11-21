return {
{
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-treesitter/playground",
  },
  build        = ":TSUpdate",
  event        = "VeryLazy",
  -- main         = "nvim-treesitter.configs",
},
 {"windwp/nvim-ts-autotag"},
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', event = {'BufReadPre', 'BufNewFile'}, cmd = 'Mason' },
    { 'm-demare/hlargs.nvim'
    },
}
