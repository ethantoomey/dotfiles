if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
    printf "\033[38;2;219;198;81m%s\033[38;2;250;250;250m\n>" (prompt_pwd)
end

function fish_title
    printf '%s' (prompt_pwd)
end

function fish_greeting
    fastfetch
end

function clear
    command clear
    fastfetch
end

function fish_right_prompt -d "Write out the right prompt"
    printf '%s' (fish_git_prompt)
end

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

set fish_prompt_pwd_dir_length 0 
set -g __fish_git_prompt_color dbc651
set -g __fish_git_prompt_color_prefix ffffff
set -g __fish_git_prompt_color_suffix ffffff
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ethantoomey/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/ethantoomey/Downloads/google-cloud-sdk/path.fish.inc'; end
