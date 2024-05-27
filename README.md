# terrnit's dotfiles

## Blueprint
![image](https://github.com/TerrniTLLC/dotfiles/assets/104818206/8d980341-d284-4c77-b914-2dc84e480629)

## Content tree
- Dotfiles
  - Common
    1. VSCode
    2. Hyper
  - Linux
    1. Nvim (Lazyvim)
    2. Tmux
    3. Helix
    4. Zelliji
  - Windows
    1. Powershell
    2. Wezterm

## My utils 
- [exa](https://github.com/ogham/exa)
- [forgit](https://github.com/wfxr/forgit)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [lazydocker](https://github.com/jesseduffield/lazydocker)
- [nvm](https://github.com/nvm-sh/nvm)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [fzf](https://github.com/junegunn/fzf)

## [💤 LazyVim](https://lazyvim.org) ![](https://img.shields.io/badge/-0.9.x-29BC9B)

lazy with extra features:

- [ ] AI-Powered Autocomplete(Copilot / Codeium)
- [x] Good Looking Theme([vitesse](https://github.com/2nthony/vitesse.nvim))
- [ ] Git Integration(LazyGit)
- [ ] Vue supported([vue.lua](.config/nvim/lua/plugins/extras/lang/vue.lua))

### Setup

1. Install [LazyVim](https://www.lazyvim.org/installation)
2. Clone this repo and link `nvim` to `~/.config`

```bash
git clone https://github.com/terrnitllc/dotfiles.git ~/yourpath
ln -s ~/yourpath/.config/nvim ~/.config
```

### Plugins

All plugins [plugins/](.config/nvim/lua/plugins).

### Keymaps

- [LazyVim keymaps](https://www.lazyvim.org/keymaps)
- [Personal keymaps](.config/nvim/lua/keymaps.lua)
- Press the `<space>` key to check all

#### General

- `<C-h>` better `^`
- `<C-l>` better `$`
- `<C-a>` select all text
- `<C-\>` open a float terminal
- `<s-a-j>` copy line(s) down
- `<s-a-k>` copy line(s) up

#### LSP

- `K` LSP hover
- `<C-j>` LSP diagnostic next, `J` LSP diagnostic prev
- `<C-k>` LSP signature help

## [Zed](https://github.com/zed-industries/zed)

Settings and Keymaps

```bash
ln -s ~/yourpath/.config/zed/settings.json ~/.config/zed
ln -s ~/yourpath/.config/zed/keymap.json ~/.config/zed
```

## Shell

- [Fish shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
  - [Tide](https://github.com/IlanCosman/tide) - Shell theme
  - [z for fish](https://github.com/jethrokuan/z) - Directory jumping
  - [fzf for fish](https://github.com/PatrickF1/fzf.fish) - requires `fzf`
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Powerline-patched fonts. I use Hack.
- [eza](https://github.com/eza-community/eza) - `ls` replacement
- [ghq](https://github.com/2nthony/ghq) - GitHub repositories manager
- [nvm](https://github.com/nvm-sh/nvm) - Node.js version manager
  - [nvm.fish](https://github.com/jorgebucaran/nvm.fish) - Fish nvm
- [zellij](https://github.com/zellij-org/zellij) - Workspace management, tmux alternative
- [vitesse.iterm](https://github.com/2nthony/vitesse.iterm) - Vitesse theme for iTerm2

## Troubleshootings

### Modifier keys(`<c-*>`, `<a-*>`) not working in tmux

#### iTerm2

Details from: https://github.com/tmux/tmux/wiki/Modifier-Keys#extended-keys

- [x] `<c-*>`: `Preferences` -> `Profiles` -> `Keys` -> `Report modifiers using CSI u`
- [x] `<a-*>`: `Preferences` -> `Profiles` -> `Keys` -> `Left Option Key: Meta/Esc+`

## Credit

- [2ntony/dotfiles](https://github.com/2nthony/dotfiles)
- [打造 neovim IDE (Chinese)](https://www.bilibili.com/video/BV1WY411P736/?spm_id_from=333.788)
- [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public)
- [ayamir/nvimdots](https://github.com/ayamir/nvimdots)

## About

> GitHub [terrnit](https://github.com/terrnit)
