return {
  {
    "nvim-neotest/neotest",
    dependencies = { "nvim-neotest/neotest-jest" },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({

          jestCommand = "npm test --",
          jestConfigFile = "jest.config.json",
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
    end,
  },
}
