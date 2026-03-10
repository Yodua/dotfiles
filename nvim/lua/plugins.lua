local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            require('onedark').setup {
                style = 'darker'
            }
            require('onedark').load()
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
        config = function()
            require("nvim-treesitter").install(
                "go",
                "html",
                "css",
                "c",
                "javascript",
                "typescript",
                "rust",
                "tsx",
                "lua"
            )
        end
    },
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },

        version = '1.*',
        opts = {
        keymap = { preset = 'default' },

        appearance = {
            nerd_font_variant = 'mono'
        },

        completion = { documentation = { auto_show = false } },

        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "pylsp",
                "lua_ls",
                "clangd",
                "ts_ls",
                "gopls",
                "sqls",
                "rust_analyzer"
            }
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
         dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'tribela/transparent.nvim',
        event = 'VimEnter',
        config = true,
    },
    {
        'stevearc/dressing.nvim',
        event = "VeryLazy",
    },
    {
        'numToStr/Comment.nvim',
        opts = {}
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup({
                opts = {
                    enable_close_on_slash = true
                },
            })
        end
    },
    {
        "lewis6991/gitsigns.nvim",

        config = function ()
            require('gitsigns').setup({
                signs = {
                    add          = { text = '|' },
                    change       = { text = '~' },
                    delete       = { text = '▼' },
                    topdelete    = { text = '▲' },
                    changedelete = { text = '~' },
                    untracked    = { text = '' },
                },
            })
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        options = {
            theme = "onedark",
        },
        config = function()
            require('lualine').setup({})
        end
    },
    {
        "kylechui/nvim-surround",
        version = "^3.0.0",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({})
        end
    }
})
