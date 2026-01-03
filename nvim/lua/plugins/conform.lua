return {
  "stevearc/conform.nvim",
  opts = {
    formatter_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      javascript = { "standard" },
      javascriptreact = { "standard" },
      typescript = { "ts-standard" },
      typescriptreact = { "ts-standard" },
      astro = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      tailwindcss = { "prettier" },
      json = { "jq" },
      yaml = { "prettier" },
      toml = { "prettier" },
      go = { "gofmt" },
    },
    format_on_save = {
      lsp_format = "fallback",
    },
  },
}
