return {

--Icons
{ 'ryanoasis/vim-devicons'               },
{ 'yamatsum/nvim-nonicons'         },
{ 'DaikyXendo/nvim-material-icon'        },
{ "nvim-tree/nvim-web-devicons"}, --Symbols
{ 'simrat39/symbols-outline.nvim'       },
{
    '2kabhishek/nerdy.nvim',
    dependencies = {
        'stevearc/dressing.nvim',
        'nvim-telescope/telescope.nvim',
    },
    cmd = 'Nerdy',
},

--Status bar
{ 'nvim-lualine/lualine.nvim', 
  event = {'BufReadPre', 'BufNewFile'},
},
{"SmiteshP/nvim-navic"},
--TabBar
{ 'akinsho/bufferline.nvim' },
--Rainbow
{ 'p00f/nvim-ts-rainbow' },
-- Indent
{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
{
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("hlchunk").setup({})
  end
},
--Lua
{ 'yamatsum/nvim-cursorline' },
--Cursor
{ 'gen740/SmoothCursor.nvim' },



--Notify 
{'rcarriga/nvim-notify'},

}
