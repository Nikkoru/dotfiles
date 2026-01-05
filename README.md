# dotfiles
My personal dotfiles for a "noobie" in linux

# Dependencies
## GNU stow
To copy the contents of this repository to `/home/user` / `~` or `~/.config`
# Usage
Simply use something like 
```bash
stow [Element1 Element2 ...]
```
for copying one or more [[Element]]s to `~` or `~/.config`, depending of the element.

To copy all elements use:
```bash
stow bash hypr kitty nvim rofi waybar zsh
```
