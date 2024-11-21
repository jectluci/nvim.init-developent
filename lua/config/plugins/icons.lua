local icons = require "nvim-nonicons"

icons.get("file")


require 'nvim-web-devicons'.setup {
  -- your personnal icons can go here (to override)
  -- you can specify color or cterm_color instead of specifying both of them
  -- DevIcon will be appended to `name`
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  },
  -- globally enable different highlight colors per icon (default to true)
  -- if set to false all icons will have the default icon's color
  color_icons = true,
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true,
  -- globally enable "strict" selection of icons - icon will be looked up in
  -- different tables, first by filename, and if not found by extension; this
  -- prevents cases when file doesn't have any extension but still gets some icon
  -- because its name happened to match some extension (default to false)
  strict = true,
  -- same as `override` but specifically for overrides by filename
  -- takes effect when `strict` is true
  override_by_filename = {
    [".gitignore"] = {
      icon = "",
      color = "#f1502f",
      name = "Gitignore"
    }
  },
  -- same as `override` but specifically for overrides by extension
  -- takes effect when `strict` is true
  override_by_extension = {
    ["log"] = {
      icon = "",
      color = "#81e043",
      name = "Log"
    }
  },
}


require 'nvim-web-devicons'.has_loaded()



require "nvim-web-devicons".get_icons()


require'nvim-web-devicons'.get_icons_by_filename()
require'nvim-web-devicons'.get_icons_by_extension()
require'nvim-web-devicons'.get_icons_by_operating_system()
require'nvim-web-devicons'.get_icons_by_desktop_environment()
require'nvim-web-devicons'.get_icons_by_window_manager()


local web_devicons_ok, web_devicons = pcall(require, "nvim-web-devicons")
if not web_devicons_ok then
  return
end

local material_icon_ok, material_icon = pcall(require, "nvim-material-icon")
if not material_icon_ok then
  return
end

web_devicons.setup({
  override = material_icon.get_icons(),
})


require 'nvim-material-icon'.setup {
  -- your personnal icons can go here (to override)
  -- you can specify color or cterm_color instead of specifying both of them
  -- DevIcon will be appended to `name`
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  },
  -- globally enable different highlight colors per icon (default to true)
  -- if set to false all icons will have the default icon's color
  color_icons = true,
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true,
}
require 'nvim-material-icon'.has_loaded()

require("nvim-material-icon").get_icon_by_filetype(filetype, opts)
require("nvim-material-icon").get_icon_colors_by_filetype(filetype, opts)
require("nvim-material-icon").get_icon_color_by_filetype(filetype, opts)
require("nvim-material-icon").get_icon_cterm_color_by_filetype(filetype, opts)

require("nvim-web-devicons").set_default_icon('', '#6d8086', 65)

--Icons Nerdtree

require 'nvim-web-devicons'.get_icons()


local iconsTeles = require("nvim-nonicons")

require("telescope").setup({
  defaults = {
    prompt_prefix = "  " .. iconsTeles.get("telescope") .. "  ",
    selection_caret = " ❯ ",
    entry_prefix = "   ",
  },
})

require("nvim-highlight-colors").setup {
  render = 'background', -- or 'foreground' or 'first_column'
  enable_named_colors = true,
  enable_tailwind = true,
  custom_colors = {
    -- label property will be used as a pattern initially(string.gmatch), therefore you need to escape the special characters by yourself with %
    { label = '%-%-theme%-font%-color',       color = '#fff' },
    { label = '%-%-theme%-background%-color', color = '#23222f' },
    { label = '%-%-theme%-primary%-color',    color = '#0f1219' },
    { label = '%-%-theme%-secondary%-color',  color = '#5a5d64' },
    { label = '%-%-theme%-contrast%-color',   color = '#fff' },
    { label = '%-%-theme%-accent%-color',     color = '#55678e' },
  }
}


-- require("flutter-tools").setup {} -- use defaults
