# Configuration file for fish.

# Abbreviations
abbr --add cl --position command clear
abbr --add pacman --position anywhere pacman --color=auto
abbr --add pcm --position anywhere pacman --color=auto
abbr --add spcm --position command sudo pacman --color=auto
abbr --add spacman --position command sudo pacman --color=auto
abbr --add mk --position command make
abbr --add cmks --position command cmake -S . -B build
abbr --add cmkb --position command cmake -S .. -B .
abbr --add gst --position command git status
abbr --add glg --position command git log
abbr --add gcm --position command git commit
abbr --add ff --position command fastfetch
abbr --add eyed3 --position command eyeD3

# Universal variables
set --universal --export EDITOR nvim
set --universal --export QT_STYLE_OVERRIDE kvantum
set --universal --export SUDO_PROMPT "$(set_color --bold red) Password: "
