call plug#begin()

Plug 'github/copilot.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'lambdalisue/fern.vim'
Plug 'ka-tsu-mo/at-vim-coder'
Plug 'thinca/vim-quickrun'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'yioneko/nvim-yati', { 'tag': '*' }
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'p00f/nvim-ts-rainbow'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'nvim-lualine/lualine.nvim'
Plug 't9md/vim-quickhl'
Plug 'petertriho/nvim-scrollbar'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'ryicoh/deepl.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'echasnovski/mini.icons'
Plug 'folke/which-key.nvim'
Plug 'numToStr/Comment.nvim'

call plug#end()
