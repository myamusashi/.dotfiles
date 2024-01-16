clear

# Shortcut
alias update="sudo pacman -Syu"
alias unlock="sudo rm /var/lib/pacman/db.lck"

# Environment Variables
set --erase fish_greeting
set -gx PATH $PATH $HOME/.local/bin:$PATH
set -gx EDITOR 'lvim'
set -gx OPENER 'rifle'
set -gx GTK_THEME 'Catppuccin-Frappe-Standard-Lavender-dark:dark'

function fish_greeting                                                 
   
end
