--THemes
-- Lua
require("bluloco").setup({
  style = "auto" ,              -- "auto" | "dark" | "light"
  transparent = false,
  italics = false,
})

vim.cmd('colorscheme bluloco')


require("lualine").setup {
    options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = {left = "", right = ""},
        section_separators = {left = "", right = ""},
        disabled_filetypes = {
            statusline = {},
            winbar = {}
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000
        }
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch", "diff", "diagnostics"},
        lualine_c = {"filename"},
        lualine_x = {"encoding", "fileformat", "filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
    inactive_sections = {
        lualine_a = {"g:coc_status", "bo:filetype"},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {
        lualine_a = {
            -- {
            --     "windows",
            --     -- show_filename_only = true, -- Shows shortened relative path when set to false.
            --     -- show_modified_status = true, -- Shows indicator when the window is modified.
            --     -- mode = 0, -- 0: Shows window name
            --     -- 1: Shows window index
            --     -- 2: Shows window name + window index

            --     max_length = vim.o.columns * 2 / 3, -- Maximum width of windows component,
            --     -- it can also be a function that returns
            --     -- the value of `max_length` dynamically.
            --     -- filetype_names = {
            --     --     TelescopePrompt = "Telescope",
            --     --     dashboard = "Dashboard",
            --     --     packer = "Packer",
            --     --     fzf = "FZF",
            --     --     alpha = "Alpha"
            --     -- }, -- Shows specific window name for that filetype ( { `filetype` = `window_name`, ... } )
            --     disabled_buftypes = {"quickfix", "prompt"}, -- Hide a window if its buffer's type is disabled
            --     windows_color = {
            --         -- Same values as the general color option can be used here.
            --         active = "lualine_{section}_normal", -- Color for active window.
            --         inactive = "lualine_{section}_inactive" -- Color for inactive window.
            --     }
            -- }
        },
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    inactive_winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    extensions = {}
}

--Tabbar
vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        mode = "tabs",
        numbers = "ordinal",
        diagnostics = "nvim_lsp"
    }
}

---Icons
require("nvim-web-devicons").set_default_icon("", "#6d8086")
require "nvim-web-devicons".setup {
    override = {
        zsh = {
            icon = "",
            color = "#428850",
            name = "Zsh"
        },
        angular = {
            icon = "",
            color = "#E23237"
        },
        git = {
            icon = "",
            color = "#F14C28",
            cterm_color = "202",
            name = "GitLogo"
        }
    },
    defaults = true
}

require("nvim-web-devicons").set_icon {
    htm = {
        icon = "",
        color = "#428850",
        cterm_color = "65",
        name = "Htm"
    },
    html = {
        icon = "",
        color = "#428850",
        cterm_color = "65",
        name = "Html"
    }
}

require "nvim-web-devicons".has_loaded()

--Icons Nerdtree

require "nvim-web-devicons".get_icons()

--LspConfig color
-- Lua
require("lsp-colors").setup(
    {
        Error = "#db4b4b",
        Warning = "#e0af68",
        Information = "#0db9d7",
        Hint = "#10B981"
    }
)

require "nvim-treesitter.configs".setup {
    highlight = {
        enable = true,
        disable = {"css", "html"}
    },
    rainbow = {
        enable = true,
        disable = {"html"},
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    }
}


function _G.symbol_line()
  local curwin = vim.g.statusline_winid or 0
  local curbuf = vim.api.nvim_win_get_buf(curwin)
  local ok, line = pcall(vim.api.nvim_buf_get_var, curbuf, 'coc_symbol_line')
  return ok and line or ''
end

-- vim.o.tabline = '%!v:lua.symbol_line()'
vim.o.statusline = '%!v:lua.symbol_line()'
vim.o.winbar = '%!v:lua.symbol_line()'


vim.opt.list = true
vim.opt.listchars:append("eol:↴")




require("indent_blankline").setup {
    show_end_of_line = true
}



local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      { name = 'luasnip' }, -- For luasnip users.
      { name = 'ultisnips' }, -- For ultisnips users.
      { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }

---DBUI
vim.g.db_ui_use_nerd_fonts = 1

--hierarchy-tree-go
require("hierarchy-tree-go").setup(
    {
        icon = {
            fold = "", -- fold icon
            unfold = "", -- unfold icon
            func = "₣", -- symbol
            last = "☉" -- last level icon
        },
        hl = {
            current_module = "guifg=Green", -- highlight cwd module line
            others_module = "guifg=Black", -- highlight others module line
            cursorline = "guibg=Gray guifg=White" -- hl  window cursorline
        },
        keymap = {
            --global keymap
            incoming = "<space>fi", -- call incoming under cursorword
            outgoing = "<space>fo", -- call outgoing under cursorword
            open = "<space>ho", -- open hierarchy win
            close = "<space>hc", -- close hierarchy win
            -- focus: if hierarchy win is valid but is not current win, set to current win
            -- focus: if hierarchy win is valid and is current win, close
            -- focus  if hierarchy win not existing,open and focus
            focus = "<space>fu",
            -- bufkeymap
            expand = "o", -- expand or collapse hierarchy
            jump = "<CR>", -- jump
            move = "<space><space>" -- switch the hierarchy window position, must be current win
        }
    }
)

---Tidy
require("tidy").setup(
    {
        filetype_exclude = {"markdown", "diff"}
        -- filetype_exclude = { "html","diff" },
    }
)
--Discord
-- The setup config table shows all available config options with their default values:
require("presence"):setup(
    {
        -- General options
        auto_update = true, -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
        neovim_image_text = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
        main_image = "neovim", -- Main image display (either "neovim" or "file")
        client_id = "793271441293967371", -- Use your own Discord application client id (not recommended)
        log_level = nil, -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
        debounce_timeout = 10, -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
        enable_line_number = false, -- Displays the current line number instead of the current project
        blacklist = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
        buttons = true, -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
        file_assets = {}, -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
        -- Rich Presence text options
        editing_text = "Editing %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
        file_explorer_text = "Browsing %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
        git_commit_text = "Committing changes", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
        plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
        reading_text = "Reading %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
        workspace_text = "Working on %s", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
        line_number_text = "Line %s out of %s" -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
    }
)
