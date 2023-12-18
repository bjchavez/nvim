<div align="center">
  <h1>My Neovim Setup</h1>
  <p align="left">I love Neovim and its environment. For this reason I share my Neovim configuration, I hope this helps you.
    You can see the documentation in Spanish <a href="/docs/README_es.md">here.</a></p>
  <p align="center">
    <img src="https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white"/>
    <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black"/>
  </p>
  <p>
    <img src="https://img.shields.io/badge/Maintained%3F-yes-green.svg"/>
  </p>
  <p>
    <img src="https://raw.githubusercontent.com/bjchavez/nvim/main/preview/preview.png"/>
    <img src="https://raw.githubusercontent.com/bjchavez/nvim/main/preview/preview-02.png"/>
  </p>
</div>

## Current Updates

- **Current theme:** [Onedark](https://github.com/navarasu/onedark.nvim)
- **Current font:** JetBrainsMono Nerd Font

## Requirements

- [Neovim](https://neovim.io/) >= 0.8.0
- Install a font from [nerd-font](https://www.nerdfonts.com/)

## Installation

- ### Clone this repository
```
git clone https://github.com/bjchavez/nvim.git ~/.config/nvim
```
- ### Delete preview and .git folders
```
sudo rm -rf ~/.config/nvim/preview
sudo rm -rf ~/.config/nvim/.git
```
- ### Run
```
nvim
```

## Plugins List

- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [mini](https://github.com/echasnovski/mini.nvim)
- [nvimtree](https://github.com/nvim-tree/nvim-tree.lua)
- [nvterm](https://github.com/NvChad/nvterm)
- [autopairs](https://github.com/windwp/nvim-autopairs)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [web-devicons](https://github.com/nvim-tree/nvim-web-devicons)

## Main Folders
```
├── lua
│   ├── core
│   └── plugins
│       ├── configs
│       └── utils
└── ...
```

## Plugins Structure

```
├── plugins
│   ├── telescope.lua
│   ├── treesitter.lua
│   ├── lsp.lua
│   ├── lualine.lua
│   ├── mini.lua
│   ├── nvim-tree.lua
│   ├── nvtem.lua
│   ├── autopairs.lua
│   ├── colorscheme.lua
│   │   ├── onedark.nvim
│   │   └── catppuccin/nvim
│   ├── gitsigns.lua
│   ├── markdown-preview.lua
│   ├── indent.lua
│   ├── web-devicons.lua
│   └── lsp.lua
└── ...
```

## FAQ

- **Why does my configuration look different?**

  I update my neovim configuration daily. I change the themes and keymaps, but I will do my best to write a good documentation.

- **Can I copy code for personal use?**

  Yes of course. That's the goal. Luck 😉

## License

MIT License
