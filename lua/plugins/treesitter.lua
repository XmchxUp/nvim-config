return {
  { "windwp/nvim-ts-autotag", opts = {}, event = "InsertEnter" },

  {

    "nvim-treesitter/nvim-treesitter",
    dependencies = {},
    --- @type TSConfig
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "cmake",
        -- "comment",
        "diff",
        "dockerfile",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "git_rebase",
        "glsl",
        "graphql",
        "haskell",
        "http",
        "json",
        "json5",
        "make",
        "org",
        "proto",
        "scss",
        "sql",
        "vue",
        "bash",
        "html",
        "javascript",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "rust",
        "go",
      })
      -- opts.autopairs = { enable = true }
      opts.autotag = { enable = true }
      opts.matchup = {
        enable = true,
        disable = { "c", "cpp" },
        enable_quotes = true,
      }
      opts.playground = {
        enable = true,
        persist_queries = true, -- Whether the query persists across vim sessions
      }
      opts.query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      }
    end,
  },
}
