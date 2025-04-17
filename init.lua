local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {
  defaults = {
    lazy = false,
  },
  performance = {
    cache = {
      enabled = true,
    }
  }
}

if vim.g.neovide then
  require("base/neovide_options")
  require("base/neovide_keybinds")
elseif vim.g.vscode then
  require("base/vscode_options")
  require("base/vscode_keybinds")
  require("lazy").setup("vscode_plugins", opts)
else
  require("base/keybinds")
  require("base/options")
  require("lazy").setup("plugins", opts)
end

local function file_exists(path)
  local file = io.open(path, "r")
  if file then
    file:close()
    return true
  else
    return false
  end
end

if file_exists("base/override_options.lua") then
  require("base/override_options")
end

if file_exists("base/override_keybinds.lua") then
  require("base/override_keybinds")
end