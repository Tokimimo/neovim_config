<div align="center">
<p>
    <a>
      <img alt="macOS" src="https://img.shields.io/badge/macOS-%23.svg?style=flat-square&logo=apple&color=000000&logoColor=white" />
    </a>
    <a href="https://github.com/neovim/neovim/releases/tag/stable">
      <img src="https://img.shields.io/badge/Neovim-0.10.3-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=green" alt="Neovim minimum version"/>
    </a>
    <a href="https://github.com/NicoMadry/neovim_config/search?l=vim-script">
      <img src="https://img.shields.io/github/languages/top/NicoMadry/neovim_config" alt="Top languages"/>
    </a>
    <a>
      <img src="https://img.shields.io/github/repo-size/NicoMadry/neovim_config?style=flat-square" />
    </a>
    <a href="https://github.com/NicoMadry/neovim_config/blob/master/LICENSE">
      <img src="https://img.shields.io/github/license/NicoMadry/neovim_config?style=flat-square&logo=GNU&label=License" alt="License"/>
    </a>
</p>
</div>

# Introduction

This repo hosts my Nvim configuration for macOS.
`init.lua` is the config entry point for the terminal Nvim.

This config will also work with Windows and Linux with minor adjustments on how to install the
required tools.

My configurations are heavily documented to make it as clear as possible.
While you can clone the whole repository and use it, it is not recommended though.
Good configurations are personal.
Everyone should have his or her unique config file.
You are encouraged to copy from this repo the part you want and add it to your own config.

To reduce the possibility of breakage, **this config is only maintained
for [the latest nvim stable release](https://github.com/neovim/neovim/releases/tag/stable).
No effort is spent on maintaining backward compatibility.**

# Install and setup

See [doc here](docs/README.md) on how to install Nvim's dependencies, Nvim itself,
and how to set up.

# Features

+ Plugin management via [Lazy.nvim](https://github.com/folke/lazy.nvim).
+ Asynchronous code execution via [asyncrun.vim](https://github.com/skywind3000/asyncrun.vim).
+ Better escaping from insert mode
  via [better-escape.vim](https://github.com/nvim-zh/better-escape.vim).
+ IDE like breadcrumbs, via [dropbar.nvim](https://github.com/Bekaboo/dropbar.nvim)
+ Open link in Browser, via [gx.nvim](https://github.com/chrishrb/gx.nvim)
+ Fast buffer jump via [hop.nvim](https://github.com/phaazon/hop.nvim).
+ Properly configuring LuaLS for editing Neovim config,
  via [lazydev.nvim](https://github.com/folke/lazydev.nvim)
+ Streamlining luarocks package installation,
  via [luarocks.nvim](https://github.com/vhyrro/luarocks.nvim)
+ Code formatting via [Neoformat](https://github.com/sbdchd/neoformat).
+ Configure automatic file saving, via [vim-auto-save](https://github.com/907th/vim-auto-save)
+ Faster matching pair insertion and jump
  via [nvim-autopairs](https://github.com/windwp/nvim-autopairs).
+ Code, snippet, word auto-completion via [nvim-cmp](https://github.com/hrsh7th/nvim-cmp).
+ Faster code commenting via [vim-commentary](https://github.com/tpope/vim-commentary).
+ Beautiful dashboard, via [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
+ FZF in vim, via [fzf-lua](https://github.com/ibhagwan/fzf-lua)
+ Show search index and count with [nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens).
+ Ultra-fast project-wide fuzzy searching via [LeaderF](https://github.com/Yggdroot/LeaderF).
+ VS Code like lightbulb for available code actions,
  via [nvim-lightbulb](https://github.com/kosayoda/nvim-lightbulb)
+ Language server protocol (LSP) support
  via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
+ Beautiful statusline via [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim).
+ Markdown writing and previewing via [vim-markdown](https://github.com/preservim/vim-markdown)
+ Undo management via [vim-mundo](https://github.com/simnalamburt/vim-mundo)
+ Animated GUI style notification via [nvim-notify](https://github.com/rcarriga/nvim-notify).
+ Code folding with [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
  and [statuscol.nvim](https://github.com/luukvbaal/statuscol.nvim)
+ File tree explorer via [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua).
+ Code highlighting via [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
+ Beautiful icons(glyphs) for use by other plugins,
  via [web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
+ Improving Yank and put functionalities for neovim, via [yanky.nvim](https://github.com/gbprod/yanky.nvim)
+ Lua functions library, via [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
+ Simplify Unicode handling, via [unicode.nvim](https://github.com/chrisbra/unicode.vim)
+ Improved bufferline, via [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
+ Vim Sugar for UNIX shell commands, via [vim-eunuch](https://github.com/tpope/vim-eunuch)
+ URL highlighting in vim, via [vim-highlighturl](https://github.com/itchyny/vim-highlighturl)
+ Highlight and navigate matching text, via [vim-matchup](https://github.com/andymass/vim-matchup)
+ Vim session handler, via [vim-obsession](https://github.com/tpope/vim-obsession)
+ Improved comman repetition, via [vim-repeat](https://github.com/tpope/vim-repeat)
+ Smarter and faster matching pair management (add, replace or delete)
  via [vim-sandwich](https://github.com/machakann/vim-sandwich).
+ Plugin required for other plugins created by tpope, via [vim-scriptease](https://github.com/tpope/vim-scriptease)
+ Vim pluging or tmux configuration, via [vim-tmux](https://github.com/tmux-plugins/vim-tmux)
+ User-defined mapping hint via [which-key.nvim](https://github.com/folke/which-key.nvim).
+ Show and remove trailing whitespace, via [whitespace.nvim](https://github.com/nvim-zh/whitespace.nvim)
+ Much needed auto-completion for neovim commands via [wilder.nvim](https://github.com/gelguy/wilder.nvim)

# Themes

+ Ported theme from VSCode Dark+, via [arctic.nvim](https://github.com/rockyzhang24/arctic.nvim)
+ Pastel theme in multiple flavors, via [catppuccin](https://github.com/catppuccin/nvim)
+ Green based theme, via [everforest](https://github.com/sainnhe/everforest)
+ Dark and plain theme, via [sonokai](https://github.com/sainnhe/sonokai)
+ Dark and colorful theme, via [edge](https://github.com/sainnhe/edge)
+ Themes based on Atom One Dark, via [onedark.nvim](https://github.com/navarasu/onedark.nvim)
+ Another take on Atom One Dark, via [onedarkpro.nvim](https://github.com/olimorris/onedarkpro.nvim)
+ Customizable theme with high plugin support, via [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
+ Material inspired theme, via [material.nvim](https://github.com/marko-cerovac/material.nvim)
+ Theme inspired by colors frm Katsushika Hokusai, via [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
+ Beautiful colorscheme via [sainnhe/gruvbox-material](https://github.com/sainnhe/gruvbox-material)
+ And more.

This is suspect to frequent changes so I won't document every single theme I'm trying out or using.

# Adding additional LSPs

In order to install additional LSPs for languages you want to work with take a look at these
[examples](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#jqlst)
