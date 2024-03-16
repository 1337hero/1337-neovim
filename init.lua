local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("vim-options")

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  defaults = {
    lazy = false, -- plugins are not lazy loaded by default
  },
})
require("format_on_save")
require("resize_windows")
require("rotate_windows")
require("harpoon.mark")
require("harpoon.ui")
require("keymap_utils")
require("keymaps")