return {
  {
    "nvim-treesitter",
    config = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        ---@type table<string, boolean>
        local added = {}
        opts.ensure_installed = vim.tbl_filter(function(lang)
          if added[lang] then
            return false
          end
          added[lang] = true
          return true
        end, opts.ensure_installed)
      end
      require("nvim-treesitter.configs").setup(opts)

      -- Use yaml tree-sitter for yaml.ansible
      vim.treesitter.language.register("yaml", "yaml.ansible")
    end,
  },
  {
    "copilot.lua",
    filetypes = {
      yaml = true,
      markdown = true,
      help = true,
      ["yaml.ansible"] = true,
    },
  },
}
