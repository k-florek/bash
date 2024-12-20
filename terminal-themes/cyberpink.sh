#!/usr/bin/env bash

export PROFILE_NAME="Cyberpink"

export COLOR_01="#0b3b61"           # Black (Host)
export COLOR_02="#ff3a3a"           # Red (Syntax string)
export COLOR_03="#52ffcf"           # Green (Command)
export COLOR_04="#fff383"           # Yellow (Command second)
export COLOR_05="#1376f8"           # Blue (Path)
export COLOR_06="#c792ea"           # Magenta (Syntax var)
export COLOR_07="#ff5dd4"           # Cyan (Prompt)
export COLOR_08="#15fca2"           # White

export COLOR_09="#62686c"           # Bright Black
export COLOR_10="#ff54b0"           # Bright Red (Command error)
export COLOR_11="#73ffd8"           # Bright Green (Exec)
export COLOR_12="#fcf4ad"           # Bright Yellow
export COLOR_13="#378dfe"           # Bright Blue (Folder)
export COLOR_14="#ae81ff"           # Bright Magenta
export COLOR_15="#ff69d7"           # Bright Cyan
export COLOR_16="#5ffbbe"           # Bright White

export BACKGROUND_COLOR="#42395D"   # Background
export FOREGROUND_COLOR="#ebddf4"   # Foreground (Text)

export CURSOR_COLOR="#38ff9c" # Cursor

apply_theme() {
    if [[ -e "${GOGH_APPLY_SCRIPT}" ]]; then
      bash "${GOGH_APPLY_SCRIPT}"
    elif [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
      bash "${PARENT_PATH}/apply-colors.sh"
    elif [[ -e "${SCRIPT_PATH}/apply-colors.sh" ]]; then
      bash "${SCRIPT_PATH}/apply-colors.sh"
    else
      printf '\n%s\n' "Error: Couldn't find apply-colors.sh" 1>&2
      exit 1
    fi
}

# | ===========================================================================
# | Apply Colors
# | ===========================================================================
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

if [ -z "${GOGH_NONINTERACTIVE+no}" ]; then
    apply_theme
else
    apply_theme 1>/dev/null
fi
