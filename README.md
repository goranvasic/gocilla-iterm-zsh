# Gocilla theme for iTerm2 and Oh My Zsh!

## Installation

1. Copy `Gocilla.zsh-theme` to `~/.oh-my-zsh/custom/themes/` and set `ZSH_THEME="Gocilla"` in `~/.zshrc` file.
2. Open iTerm2 (CMD + Space, type iTerm2) and load `Gocilla` theme:
- Navigate to `iTerm2 > Preferences > Profiles`
- Select your profile, click on "Colors" tab and choose `Color Presets... > Import... > Gocilla.itermcolors`

### Additional settings

Works well with patched [Source Code Pro](https://github.com/powerline/fonts/blob/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf) font (14px).

You can also install `coreutils` via Homebrew, and in `~/.zshrc` file you can alias `ll` to:
`alias ll='gls --color -lha --group-directories-first'`
