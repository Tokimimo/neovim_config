vim.loader.enable()

local utils = require("utils")

local expected_version = "0.11.2"
utils.is_compatible_version(expected_version)

local config_dir = vim.fn.stdpath("config")
---@cast config_dir string

-- Neovim global settings
require("globals")

-- setting options in nvim
vim.cmd("source " .. vim.fs.joinpath(config_dir, "viml_conf/options.vim"))

-- Autocommands also used for plugin configuration
require("custom-autocmd")

-- user defined mappings
require("mappings")

-- all the plugins configurations
vim.cmd("source " .. vim.fs.joinpath(config_dir, "viml_conf/plugins.vim"))

-- Colorschemes configuration ( Loading random colorscheme on each startup )
require("colorschemes")
