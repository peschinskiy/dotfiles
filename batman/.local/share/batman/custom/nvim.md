# Neovim Cheatsheet

> Leader key: `Space`

## Navigation

| Key | Action |
|-----|--------|
| `<C-h/j/k/l>` | Move between windows |
| `<C-d>` / `<C-u>` | Scroll down/up (centered) |
| `n` / `N` | Next/prev search result (centered) |
| `<ESC>` | Clear search highlight |

## Buffers (bufferline)

| Key | Action |
|-----|--------|
| `gt` | Next buffer |
| `gT` | Prev buffer |
| `{n}gp` | Go to buffer by position (e.g. `3gp`) |
| `<leader>bd` | Delete (close) buffer |

## Files & Search (Telescope)

| Key | Action |
|-----|--------|
| `<leader>sf` | Find files (including hidden) |
| `<leader>sr` | Find git-tracked files |
| `<leader>sg` | Live grep |
| `<leader>sw` | Grep word under cursor |
| `<leader>sb` | Search open buffers |
| `<leader>sd` | Search diagnostics |
| `<leader>sh` | Search help tags |
| `<leader>sc` | Resume last search |
| `<leader><leader>` | Browse all Telescope pickers |
| `<leader>fb` | File browser |
| `<leader>fB` | File browser (current file dir) |
| `<leader>pv` | Open netrw (Ex) |

## LSP (when server attached)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Go to references |
| `gi` | Go to implementation |
| `K` | Hover docs |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>e` | Show diagnostic float |
| `[d` / `]d` | Prev/next diagnostic |
| `<leader>f` | Format buffer |

## Completion (blink.cmp — super-tab)

| Key | Action |
|-----|--------|
| `Tab` | Next item / expand snippet |
| `Shift-Tab` | Prev item |
| `Enter` | Confirm selection |

## Editing

| Key | Mode | Action |
|-----|------|--------|
| `J` / `K` | Visual | Move selection down/up |
| `<C-q>` | Normal | Visual block (WSL: replaces `<C-v>`) |
| `<C-h/j/k/l>` | Insert | Arrow keys |
| `<Esc><Esc>` | Terminal | Exit terminal mode |
