call plug#begin('~/.config/nvim/plugged/')

"----------  interface  ------------
"Config
Plug 'editorconfig/editorconfig-vim'
"
"THemes

" Plug 'almo7aya/neogruvbox.nvim', { 'branch': 'master' }
" Plug 'uloco/bluloco.nvim',
" Plug 'rktjmp/lush.nvim'
" Plug 'navarasu/onedark.nvim'
" Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"symbols
Plug 'simrat39/symbols-outline.nvim'


"Status bar
Plug 'nvim-lualine/lualine.nvim'

"Tabbar
" Plug 'alvarosevilla95/luatab.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }

"""indent
Plug 'lukas-reineke/indent-blankline.nvim'


""icons
Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'yamatsum/nvim-nonicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'DaikyXendo/nvim-material-icon'


"-----------  Utilidades -------------
""NvimTree 
"Plug 'kyazdani42/nvim-tree.lua'
"
"NeoTree
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 's1n7ax/nvim-window-picker'
"
"
"EasyMotion
Plug 'easymotion/vim-easymotion'
"
"Tmux
Plug 'christoomey/vim-tmux-navigator'

"""Rainbow
Plug 'p00f/nvim-ts-rainbow'

"""Comentarios
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'

"" Surround
Plug 'tpope/vim-surround'

""format
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'sbdchd/neoformat'

"fzf
Plug 'sharkdp/bat'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"Multi cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"Curosr
Plug 'gen740/SmoothCursor.nvim'

"GIt
Plug 'tpope/vim-fugitive'

"Terminal
Plug 'wvffle/vimterm'
Plug 'fladson/vim-kitty' "Kitty sintaxys

"Suda - Sudo 
Plug 'lambdalisue/suda.vim'

"Fold
Plug 'anuvyklack/fold-preview.nvim' "Permite personalizar los folds
Plug 'anuvyklack/pretty-fold.nvim' "Muestra lo que esta dentro del fold
Plug 'anuvyklack/keymap-amend.nvim' "Plugin necesario para usar fold-preview

" autoPairs

"Images 
Plug 'm00qek/baleia.nvim', { 'tag': 'v1.2.0' }

Plug 'samodostal/image.nvim'

" Plug 'windwp/nvim-autopairs'


"-----------  Sintaxis -------------
"""syntastic
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
" Plug 'jparise/vim-graphql'
Plug 'jelera/vim-javascript-syntax'
Plug 'neomake/neomake'

"-----------  Errores -------------
"Ale
Plug 'dense-analysis/ale'
Plug 'eslint/eslint'
Plug 'puremourning/vimspector'
Plug 'mcauley-penney/tidy.nvim'


"-----------  Autocompletado  -------------
"""autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'rafcamlet/coc-nvim-lua'
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
" Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}

""Snippets
Plug 'natebosch/dartlang-snippets'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

" For luasnip users.
 " Plug 'L3MON4D3/LuaSnip'
 " Plug 'saadparwaiz1/cmp_luasnip'

" For ultisnips users.
 Plug 'SirVer/ultisnips'
 Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
 Plug 'dcampos/nvim-snippy'
 Plug 'dcampos/cmp-snippy'


"Snippets VSCode=>
" Flutter
" Plug 'Neevash/awesome-flutter-snippets'
" React
Plug 'mlaursen/vim-react-snippets'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

"-----------  Desarrollo web  -------------
""Emmet
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'

""html
Plug 'othree/html5.vim'
"""JInja2
Plug 'glench/vim-jinja2-syntax'
Plug 'hiphish/jinja.vim'

""css
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'

""SCSS
Plug 'tpope/vim-haml'
Plug 'shmargum/vim-sass-colors'

""SASS
"Plug 'AtsushiM/sass-compile.vim'
"Plug 'AtsushiM/search-parent.vim'

""javascript && typescript && Angular
Plug 'yuezk/vim-js'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'Quramy/tsuquyomi'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"javascript
"Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'othree/yajs.vim'
"typescript
"Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
"Angular
"React
Plug 'yannickcr/eslint-plugin-react'
Plug 'elzr/vim-json'

"----------Desarrollo Python -----------
"Python
Plug 'vim-python/python-syntax'  
Plug 'davidhalter/jedi-vim'  
Plug 'klen/python-mode'  
Plug 'hacksoftware/vim-python-domain-knowledge'  
" Plug 'ehamberg/vim-cute-python'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }  
Plug 'ambv/black'  

"Entornos virtuales
Plug 'plytophogy/vim-virtualenv'  
Plug 'PieterjanMontens/vim-pipenv'  
Plug 'fisadev/vim-isort'  


"----------Desarrollo Mobil -----------
"flutter
Plug 'nvim-lua/plenary.nvim'  
" Plug 'akinsho/flutter-tools.nvim'
" Plug 'dart-lang/dart-vim-plugin'
" Plug 'thosakwe/vim-flutter'
" Plug 'natebosch/vim-lsc'
" Plug 'natebosch/vim-lsc-dart'

""Swift
"Plug 'keith/swift.vim' " syntax highlighting
"Plug 'nvim-lua/plenary.nvim'
"Plug 'tami5/swift.nvim'

""kotlin
"Plug 'udalov/kotlin-vim'


"----------Desarrollo JAVA -----------
Plug 'mikelue/vim-maven-plugin'
Plug 'scalameta/nvim-metals'
Plug 'mfussenegger/nvim-dap'

"----------Desarrollo C++ -----------
"c++
"Plug 'jackguo380/vim-lsp-cxx-highlight'

"----------Desarrollo C# -----------
"c++
" Plug 'omnisharp/omnisharp-vim'
" Plug 'nickspoons/vim-sharpenup'
" Plug 'OrangeT/vim-csharp'
" Plug 'nickspoons/vim-sharpenup'
"
"
"----------Docker -----------
" Plug 'docker/docker'
" Plug 'ekalinin/dockerfile.vim'
" Plug 'kevinhui/vim-docker-tools'

"----------YAML -----------
Plug 'stephpy/vim-yaml'

"----------JSON -----------
Plug 'elzr/vim-json'

"----------PHP -----------
" Plug 'jwalton512/vim-blade'
" Plug 'noahfrederick/vim-laravel'
" Plug 'stanangeloff/php.vim'
" Plug 'lvht/phpcd.vim'


"----------Bases de datos -----------
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'
"
"Postgresql
"Plug 'vim-scripts/dbext.vim'
"Plug 'lifepillar/pgsql.vim'


"----------SVN-----------
" Plug 'juneedahamed/svnj.vim'

"----------Plugins Complementarios De lua-----------
"Plug Lua
Plug 'yamatsum/nvim-cursorline'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'folke/lsp-colors.nvim'
Plug 'liuchengxu/vista.vim'

" Autocompletado de lsp
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'Shougo/ddc.vim'
Plug 'shun/ddc-vim-lsp'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'


Plug 'onsails/lspkind.nvim'

"------Plugins de cargado Para mas rapido---------
Plug 'nathom/filetype.nvim'
Plug 'lewis6991/impatient.nvim'
" Plug 'editorconfig/editorconfig-vim'

"- Tetris-"
" Plug 'alec-gibson/nvim-tetris'
"----------Plugins GUI------------"
Plug 'equalsraf/neovim-gui-shim'
"-----Plug Discord------- "
Plug 'andweeb/presence.nvim'

call plug#end()

