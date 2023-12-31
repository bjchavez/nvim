## Current updates

- **Current theme:** [Tokyonight](https://github.com/folke/tokyonight.nvim)

## Requirements

- [Neovim](https://neovim.io/) >= 0.8.0
- A font from [nerdfonts.com](https://www.nerdfonts.com/)
> :bulb: Some recommended fonts: **Meslo, Hack, Fira Code or JetBrainsMono**

## Installation

- ### Clone this repository
```
git clone https://github.com/bjchavez/nvim.git ~/.config/nvim
```
- ### Delete preview and .git folders
```
sudo rm -rf ~/.config/nvim/docs/imgs
sudo rm -rf ~/.config/nvim/.git
```
- ### Run
```
nvim
```

## Plugins list

- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [echasnovski/mini.nvim](https://github.com/echasnovski/mini.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)

## Main folders
```
├── lua
│   ├── neto
│   ├── core
│   └── plugins
│       ├── configs
│       └── utils
└── ...
```

## Plugins structure

```
├── plugins
│   ├── telescope.lua
│   ├── treesitter.lua
│   ├── lualine.lua
│   ├── mini.lua
│   ├── autopairs.lua
│   ├── colorscheme.lua
│   │   ├── tokyonight.nvim
│   │   └── nightfox.nvim
│   ├── gitsigns.lua
│   ├── markdown-preview.lua
│   ├── indent.lua
│   ├── web-devicons.lua
│   ├── neodev.nvim
│   ├── toggleterm.lua
│   └── lsp.lua
└── ...
```

## Keymaps

> :memo: **NOTE**: the `space-bar` remains as the `<leader>` key.

**`SOME VIM MODES USED`**: **`[N]ORMAL`** - **`[V]ISUAL`** - **`[I]NSERT`** - **`[T]ERMINAL`**

### General

| Mode      | Keymap           | Description                          |
| :----:    | :----:           | ----------------------------------   |
| N - I - V | `Ctrl` + `s`     | Save file                            |
| N         | `Ctrl` + `q`     | Quit                                 |
| N         | `Ctrl` + `x`     | Quit and throw away unsave changes   |
| N         | `Ctrl` + `h`     | Go to left window                    |
| N         | `Ctrl` + `j`     | Go to lower window                   |
| N         | `Ctrl` + `k`     | Go to upper window                   |
| N         | `Ctrl` + `l`     | Go to right window                   |
| N         | `leader` + `v`   | Vertical split                       |
| N         | `leader` + `h`   | Horizontal split                     |
| N         | `leader` + `bd`  | Delete current buffer                |
| N         | `Ctrl` + `Up`    | Increase window height               |
| N         | `Ctrl` + `Down`  | Decrease window height               |
| N         | `Ctrl` + `Left`  | Increase window width                |
| N         | `Ctrl` + `Right` | Decrease window width                |

### Telescope

| Mode      | Keymap           | Description                          |
| :----:    | :-----:          | ----------------------------------   |
| N         | `leader` + `ff`  | Find files                           |
| N         | `leader` + `bf`  | Show buffers                         |
| N         | `leader` + `gs`  | Show git status                      |
| N         | `leader` + `gc`  | Show git commits                     |
| N         | `leader` + `km`  | Show keymaps                         |
| N         | `leader` + `t`   | Telescope                            |
| N         | `leader` + `fg`  | Show help tags                       |
| N         | `leader` + `v`   | Go to file selection as a vsplit     |
| N         | `Ctrl` + `down`  | Scroll down in preview window        |
| N         | `Ctrl` + `up`    | Scroll up in preview window          |

### Toggle Term

| Mode      | Keymap           | Description                          |
| :----:    | :-----:          | ----------------------------------   |
| N         | `Alt` + `i`      | Show floating terminal               |
| T         | `Alt` + `i`      | Hide floating terminal               |

### Markdown Preview

| Mode      | Keymaps          | Description                          |
| :----:    | :------:         | ----------------------------------   |
| N         | `leader` + `mp`  | Show markdown preview window         |
| N         | `leader` + `ms`  | Close markdown preview window        |

### LSP

| Mode      | Keymaps          | Description                          |
| :----:    | :------:         | ----------------------------------   |
| N         | `gd`             | Go to definition                     |
| N         | `gh`             | Show float definition                |
| N         | `leader` + `n`   | Go to next diagnostic                |
| N         | `leader` + `m`   | Go to previous diagnostic            |

