<div align="center">
  <h1>Mi configuración de Neovim</h1>
  <p align="center">
    <img src="https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white"/>
    <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black"/>
  </p>
  <p>
    <img src="https://img.shields.io/badge/Maintained%3F-yes-green.svg"/>
  </p>
  <p>
    <img src="https://raw.githubusercontent.com/bjchavez/my-nvim/main/preview/general.png"/>
    <img src="https://raw.githubusercontent.com/bjchavez/my-nvim/main/preview/telescope.png"/>
  </p>
</div>

## Actualizaciones

- **Tema actual:** Catppuccin
- **Fuente actual:** JetBrains Mono

## Tabla de contenido

- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Lista de plugins](#lista-de-plugins)
- [Carpetas principales](#carpetas-principales)
- [Flujo de trabajo](#flujo-de-trabajo)
  - [Estructura de plugins](#estructura-de-plugins)
  - [Temas](#los-temas)
  - [Mapa de teclas](#el-mapa-de-teclas)
  - [Configuración de plugins](#configuración-de-plugins)
    - [Iconos](#nvim-web-devicons)
    - [Lualine](#lualine)
    - [Mini](#mini)
    - [Nvimtree](#nvimtree)
    - [Telescope y Treesitter](#telescope-y-treesitter)
  - [Comandos](#comandos-importantes)
- [FAQ](#faq)

## Requisitos

- [Neovim](https://neovim.io/) >= 0.8.0
- Tener instalada una [nerd-font](https://www.nerdfonts.com/)

## Instalación

- ### Clona el repositorio
```
git clone https://github.com/bjchavez/dot-nvim.git ~/.config/nvim
```
- ### Elimina la carpeta preview y .git
```
sudo rm -rf ~/.config/nvim/preview
sudo rm -rf ~/.config/nvim/.git
```
- ### Comienza
```
nvim
```

## Lista de plugins

- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [mini](https://github.com/echasnovski/mini.nvim)
- [nvimtree](https://github.com/nvim-tree/nvim-tree.lua)
- [nvterm](https://github.com/NvChad/nvterm)
- [autopairs](https://github.com/windwp/nvim-autopairs)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)

## Carpetas principales
```

├── lua
│   ├── core
│   └── plugins
│       ├── configs
│       └── utils
└── ...
```
## Flujo de trabajo

### Estructura de plugins

```
├── plugins
│   ├── coding.lua
│   │   ├── mini.nvim
│   │   ├── gitsigins.nvim
│   │   ├── indent-blankline.nvim
│   │   └── nvim-autopairs
│   ├── colorscheme.lua
│   │   ├── catppuccin/nvim
│   │   └── tokyonight.nvim
│   ├── editor.lua
│   │   ├── lualine.nvim
│   │   ├── nvim-tree.lua
│   │   ├── nvim-web-devicons
│   │   └── nvterm
│   ├── telescope.lua
│   ├── treesitter.lua
│   └── lsp.lua
└── ...
```

---
### Los temas

Para empezar, nos ubicamos en este archivo: **lua/core/init.lua**

Hay tres temas instalados:
  - [catppuccin](https://github.com/catppuccin/catppuccin)
  - [tokyonight](https://github.com/folke/tokyonight.nvim)
  - [kanagawa](https://github.com/rebelot/kanagawa.nvim)

Por tanto, para cambiar el tema simplemente comentamos o descomentamos el que necesitemos:

``` lua
-- vim.cmd[[colorscheme tokyonight-storm]]
vim.cmd[[colorscheme catppuccin-mocha]]
```
> Para cada tema, **catppuccin y tokyonight**, recomiendo los sabores **mocha** y **storm**, respectivamente.

Si quisieramos instalar un nuevo tema nos dirigimos a **lua/plugins/colorscheme.lua** y procedemos de la siguiente forma:

```lua
return {
  { "catppuccin/nvim", ... },
  -- Aquí pegamos el repositorio del esquema de colores, por ejemplo:
  { "folke/tokyonight.nvim", ... }
}
```
Guardamos y cerramos. La proxima ves que ingresemos neovim detectará el tema y lo instalará automáticamente. Para aplicarlo
volvemos a **lua/core/init.lua** y agregamos el nombre del tema:

```lua
vim.cmd[[colorscheme catppuccin-mocha]]
```
---

### El mapa de teclas

El archivo de configuración de los atajos de teclado está en: **lua/core/mappings.lua**. Entre los principales tenemos:

| Modo      | Atajo          | Descripción                   |
| :-------: | :------------: | --------------------------    |
| Normal    | Ctrl + q       | Cerrar ventana                |
| Normal    | Ctrl + x       | Forzar cierre de ventana      |
| Normal    | Space + v      | Dividir ventana vertical      |
| Normal    | Space + h      | Dividir ventana horizontal    |
| Normal    | Ctrl + h       | Mover a la ventana izquierda  |
| Normal    | Ctrl + j       | Mover a la ventana inferior   |
| Normal    | Ctrl + k       | Mover a la ventana superior   |
| Normal    | Ctrl + l       | Mover a la ventana derecha    |
| Normal    | Space + ,      | Abrir NvimTree                |
| Normal    | Space + .      | Cerrar NvimTree               |
| Normal    | Alt + i        | Abrir terminal                |
| Terminal  | Alt + i        | Cerrar terminal               |
| Normal    | Shift + left   | Moverse al buffer anterior    |
| Normal    | Shift + right  | Moverse al buffer siguiente   |
| Normal    | Ctrl + 2       | Modificar el tab a 2 espacios |
| Normal    | Ctrl + 4       | Modificar el tab a 4 espacios |

> **IMPORTANTE**: la tecla **Space** esta configurada para ser el **map leader** o (lider de mapa de teclas).

---

### Configuración de plugins

Toda la configuración respecto a los plugins permanece en: **lua/plugins/configs**. Estos son los plugins que hasta el momento
podemos configurar:

1. [nvim-web-devicons](#nvim-web-devicons)
2. [lualine](#lualine)
3. [mini](#mini)
4. [nvimtree](#nvimtree)
5. [telescope](#telescope-y-treesitter)
6. [treesitter](#telescope-y-treesitter)

---

#### Nvim-web-devicons

Este plugin nos proporciona algunos iconos para nuestro editor. Podemos personalizar que icono queremos observar dependiendo
de cada tipo de archivo, por ejemplo, para archivos con extension **.sh**:

```lua
local options = {}

options.override = {
  sh = { -- extensión del archivo
    icon = "",
    color = "#cdd6f4",
    name = "sh"
  }
}
```
Para leer su documentación puede ejecutar el siguiente comando en neovim, ``` :help nvim-web-devicons ```

---

#### Lualine

Lualine es una barra de estado que nos proporciona una serie de mensajes del entorno de desarrollo, como lo pueden ser:
el modo de neovim, el nombre del archivo, la extensión del archivo, el numero de linea vertical y horizontal, y la rama de git
donde estemos trabajando. Es quizá uno de los plugins más interesantes y personalizables hechos por la comunidad. Podemos cambiar el
tema y los separadores de sección en su configuración:

```lua

local lualine = {}

lualine.options = {
    theme = theme.tokyonight --(catppuccin o moonfly),
    component_separators = { left = "", right = "" },
    section_separators = theme.separators.block, -- (triangle, arrow o block)
    disabled_filetypes = { "NvimTree", "Lazy", "Mason", "Terminal" }
}

{ ... }

return lualine
```

Para leer su documentación puede ejecutar el siguiente comando en neovim, ``` :help lualine.txt ```

---

#### Mini

Mini es un plugin que empaqueta otros plugins más pequeños. Entre ellos el más resaltante es **mini.comment**.
Un complemento que otorga un atajo de teclado para comentar y descomentar código de forma rápida.

```lua
local options = {}
-- esta configuración maximiza el alcanze de mini.comment
options.comment = {
  options = {
    custom_commentstring = function ()
        return vim.o.commentstring
    end
  }
}

return options
```
> Para comentar una línea de código el atajo es **gcc** y para bloques solo **gc**.

Para leer su documentación puede ejecutar el siguiente comando en neovim, ``` :help mini.nvim ```

---

#### NvimTree

Es un poderoso explorador de archivos escrito en lua. Tiene muchas propiedades las cuales son accesibles mediante el comando
**help nvim-tree** en neovim.

```lua
local options = {}

-- podemos cambiar la posición del explorador y su tamaño
options.view = {
  width = 30,
  side = "right",
  preserve_window_proportions = true
}

-- esto filtrará extensiones o carpetas y las mantendrá ocultas
options.filters = {
  custom = { ".git", "node_modules", ".github", ".vscode", "..." }
}

{ ... }

return options
```
Para leer su documentación puede ejecutar el siguiente comando en neovim, ``` :help nvim-tree ```

---

#### Telescope y Treesitter

En palabras sencillas, telescope es un buscador de archivos, comandos y referencias imprescindible en la escritura de código.
Y treesitter es un analizador de código que se encarga de buscar patrones en los archivos para resaltar variables, módulos, funciones, etc.
Ambos plugins son parte fundamental del corazón de neovim y lo que lo hace tan potente e incomparable con otros editores de texto,
merecen una larga explicación o tutorial en todo caso, tal vez escriba uno más adelante, pero de momento únicamente mencionaré sus
ficheros de configuración y comandos de documentación:

```
lua/plugins/configs/telescope.lua
:help telescope.nvim
```

```
lua/plugins/configs/treesitter.lua
:help treesitter
```
### Comandos

| Comando        | Descripción   |
| -------------  | ------------- |
| :MasonInstall  | Instalar un servidor (LSP), linter o formateador.                  |
| :MasonUpdate   | Actualiza todos los paquetes instalados (LSP, linters, formaters). |
| :MasonUninstall| Desinstalar un servidor (LSP), linter o formateador.               |
| :Lazy          | Acceder al administrador de complementos.                          |

## FAQ

**```¿Por qué mi configuración se ve diferente?```**

Diaramente estoy actualizando mi neovim, tiendo mayormente a cambiar el tema y los atajos de teclado. Haré mi mayor
esfuerzo por documentar cada cambio por más mínimo que sea.

**```¿Puedo tomar referencias y bloques de código para uso personal?```**

Sí, claro, ese es el objetivo 😉.

