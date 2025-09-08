let g:quickrun_config = {}

" when you run a cpp file, measure the execution time
let g:quickrun_config['cpp'] = {
\  'cmdopt' : '-std=c++14 -Wall',
\  'hook/time/enable' : 1
\}

let g:quickrun_config['_'] = {
\  'split' : 'vertical'
\}
set splitright

" DeepL Plugin
let g:deepl#endpoint = "https://api-free.deepl.com/v2/translate"
let g:deepl#auth_key = '5d3d6884-d741-44a8-8e40-393521fd2faf:fx'
" キーマップを指定。t => CTRL+j で日本語変換、t => CTRL+e で英語変換するように設定します。
vmap tj <Cmd>call deepl#v("JA")<CR>
vmap te <Cmd>call deepl#v("EN")<CR>

" color scheme
colorscheme darcula-solid
set termguicolors

" Lua
lua <<EOF
-- treesitter
require("nvim-treesitter.configs").setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true, -- disable builtin indent module
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
  }
}

--lualine
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
    globalstatus = true
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- indent-blankline
require("ibl").setup()

-- nvim-autopairs
require('nvim-autopairs').setup {}

-- scrollbar
require("scrollbar").setup()

-- icon
require("mini/icons").setup()


EOF
