return {
  "iamcco/markdown-preview.nvim",
  event = "User AstroFile",
  opts = {},
  ft = { "markdown" },
  -- if markdown-preview is not working well, plz see https://github.com/iamcco/markdown-preview.nvim/issues/558 for details
  build = "cd app && npm install && git restore .",
  config = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_auto_close = true
    vim.g.mkdp_open_to_the_world = false
    vim.g.mkdp_open_ip = "127.0.0.1"
    vim.g.mkdp_port = "8787"
    vim.g.mkdp_browser = ""
    vim.g.mkdp_echo_preview_url = true
    vim.g.mkdp_page_title = "${name}"
  end,
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  keys = { { "<leader>um", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" } },
}
