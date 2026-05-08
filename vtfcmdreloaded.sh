#!/bin/bash

# This is copied from the crowbar AUR package

export WINEPREFIX="$HOME/.local/share/wineprefixes/vtfeditreloaded"
export WINEDEBUG=-all

declare -a args

for arg; do
  if [[ "${arg:0:1}" = "-" ]]; then
    args+=("${arg/#-//}")
  else
    args+=("$(winepath -w "$arg")")
  fi
done

wine "$WINEPREFIX/drive_c/Program Files/VTFEdit Reloaded/VTFCmd.exe" "${args[@]}"
EXIT=$?
