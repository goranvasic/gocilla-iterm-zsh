# --------------------------------------------------------------
# Gocilla (iTerm2 Color Preset):
# --------------------------------------------------------------
#   Foreground:             858585          Selection:              2a2a2a
#   Background:             1e1e1e          Selected text:          ffffff
#   Bold: On                6d6d6d          Badge:                  9affa4  Alfa 127
#   Links:                  89ddff          Tab Color: Off
#                                           Underline color: On     1e1e1e
#
#   Cursor:                 4e4e4e
#   Cursor Text:            ffffff
#
#   Black:      141414      Bright:   4e4e4e
#   Red:        a02929      Bright:   858585
#   Green:      7cd468      Bright:   cccc9b
#   Yellow:     3d6933      Bright:   d88e73
#   Blue:       2d4b82      Bright:   795d39
#   Magenta:    89ddff      Bright:   d4d4d4
#   Cyan:       d4d4d4      Bright:   795d39
#   White:      d4d4d4      Bright:   d4d4d4
# --------------------------------------------------------------

# To install the theme, copy 'Gocilla.zsh-theme' to '~/.oh-my-zsh/custom/themes/' and set it in '~/.zshrc' file

# You can also install 'coreutils' with Homebrew, and in '~/.zshrc' file you can alias 'll' to:
# alias ll='gls --color -lha --group-directories-first'

# Works well with patched Source Code Pro font (14px):
# https://github.com/powerline/fonts/blob/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf

# Required for Oh My Zsh! parsing of Git branch:
# ZSH_THEME_GIT_PROMPT_PREFIX="("
# ZSH_THEME_GIT_PROMPT_SUFFIX=")"
# ZSH_THEME_GIT_PROMPT_CLEAN=""
# ZSH_THEME_GIT_PROMPT_DIRTY="*"

parse_git_branch() {
  GIT_BRANCH=`git rev-parse --abbrev-ref HEAD` 2>/dev/null
  if [[ ! -z $GIT_BRANCH ]]; then
    print -f "($GIT_BRANCH)"
  fi
}

PS1="%F{green}%n@%m%f "                          # user@host
PS1=$PS1"%F{cyan}\$(date +%d-%m-%Y)%f "          # DD-MM-YYYY
PS1=$PS1"%F{yellow}%~%f "                        # Current path.
PS1=$PS1"%F{magenta}\$(parse_git_branch)%f"      # Parse git branch.
#PS1=$PS1"%F{magenta}\$(git_prompt_info)%f"      # git branch Oh My Zsh! way. Adds * for dirty branches, but it is much slower.
PS1=$PS1$'\n'                                    # \n
PS1=$PS1"%(?.%F{green}.%F{red})❯%f "            # ❯
#PS1=$PS1"%(?.%F{green}.%F{red})$%f "           # $

export PROMPT=$PS1
