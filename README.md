# mulfok's dotfiles

![cover](https://i.postimg.cc/T3qHmpWn/screenshot-20261110-021252.png)
(Wallpaper by [spacejunk](https://bsky.app/profile/realspacejunk.bsky.social))

> The configuration I use on my desktop!

This is my curated backup of dotfiles from my computer that I manage using [Stow](https://www.gnu.org/software/stow). I generally update it whenever I make some cool changes to my configs that I don't want to lose.

## Contents

## Screenshots

## Programmes
Below is a big list of the various things I require for my desktop, and which apps/programmes I use to do the job.

I update this as and when I swap out/try new tools.

| Category | Tool |
| --- | --- |
| Window Manager | [MangoWM](https://mangowm.github.io/) |
| Launcher | [fuzzel](https://codeberg.org/dnkl/fuzzel) |
| Terminal | [kitty](https://github.com/kovidgoyal/kitty) |
| Status Bar | [noctalia](https://noctalia.dev) |
| Shell | [noctalia](https://noctalia.dev) |
| Wallpapers | [noctalia](https://noctalia.dev) |
| Notif Daemon | [mako](https://github.com/emersion/mako) |
| Desktop Portal | xdg-desktop portal, xdg-desktop-portal-wlr |
| Clipboard | wl-clipboard |

## Keybinds
Here's a BIG disclaimer about my keybinds. I use **Colemak-DH,** not QWERTY.

![colemak-dh](https://colemakmods.github.io/mod-dh/gfx/keyboard/colemak_dh_iso.png)

As such, my binds that focus on ergonomics are tailored to where the keys are on that layout. Otherwise, my binds are sort of based on whatever dumb mnemonic comes to mind, e.g. SUPER+R to **R**un my dmenu.

Where this matters more is for my neovim config, where I move around a lot of things to accommodate for my non-standard layout. Just something to keep in mind when looking through my things.

### Window Manager
Some of the keybinds I use for my window manager. Currently I use Mango, but on every other one I've tried (Niri, Hyprland), I've used the same setup.

**Programme Binding**
| Mod | Key | Action |
| ---:|:--- | --- |
| SUPER | t | spawn terminal | 
| SUPER | e | spawn file browser |
| SUPER | r | spawn launcher |
| SUPER | , | shell settings |

**Window Management**
| Mod | Key | Action |
| ---:|:--- | --- |
| SUPER | c | close window |
| ALT | F4 | force close window |
| SUPER | \\ | global window |
| ALT | TAB | focus next window | 
| SUPER | v | float window |
| SUPER | V | centre floating window |
| SUPER | m | maximise floating window |
| SUPER | f | fullscreen window |
| SUPER | g | toggle window gaps |
| SUPER | mouse left | drag floating window |
| SUPER | mouse right | resize floating window |

**Workspaces**
| Mod | Key | Action |
| ---:|:--- | --- |
| SUPER | 1-9 | switch to workspace (main display) |
| SUPER+SHIFT | 1-9 | move window to workspace (main) |
| SUPER+ALT | 1-9 | switch to workspace (secondary) |
| SUPER+SHIFT+ALT | 1-9 | move window to workspace (secondary) |




