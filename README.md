# NixVim Configuration

A minimal declarative [Neovim](https://github.com/neovim/neovim) configuration using [NixVim](https://github.com/nix-community/nixvim).

## Quick Start

Try it out without installing with [Nix](https://nixos.org)
```bash
nix run github:adeci/nixvim-config
```

## Plugins

| Plugin | Description |
|--------|-------------|
| **oil** | File explorer as buffer |
| **telescope** | Fuzzy finder |
| **cmp** | Auto-completion |
| **treesitter** | Syntax highlighting |
| **lsp** | Language servers (Nix, C/C++, ...) |
| **comment** | Smart commenting |
| **colorscheme** | Tokyo-night theme |
| **gitsigns** | Git decorations in sign column |
| **fugitive** | Git integration |
| **lightline** | Statusline |
| **mini** | Enhanced text objects |
| **sleuth** | Auto-detect indentation |
| **wilder** | Enhanced wildmenu |
| **which-key** | Keybinding hints |

## A Few Key Bindings

Leader key: `<Space>`

- `-` - Open file explorer (oil)
- `<leader>sf` - Search files (telescope)
- `<leader>sg` - Search grep (telescope)
- `gd` - Go to definition
- `[d` / `]d` - Navigate diagnostics/errors
- `]c` / `[c` - Jump to next/previous git change

## Installation

Add to your flake inputs:

```nix
{
  inputs = {
    nixvim-config.url = "github:adeci/nixvim-config";
  };
}
```
