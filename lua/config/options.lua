-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = true
vim.opt.scrolloff = 8 -- Keep 8 lines visible
vim.opt.sidescrolloff = 8 -- Keep 8 columns visible
vim.opt.wrap = false -- No line wrapping
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 2 -- Indent width
vim.opt.tabstop = 2 -- Tab width
vim.opt.ignorecase = true -- Ignore case in search
vim.opt.smartcase = true -- Case sensitive if uppercase used
vim.opt.listchars = {
  extends = "…",
  eol = "⏎",
  tab = "␉·",
  trail = "␠",
  nbsp = "⎵",
}
