#!/usr/bin/env bash
set -uo pipefail

dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
lua_bin="${LUA:-lua}"
status=0

cd "$dir" || exit 1
for file in test/server.lua test/client.lua test/legacy.lua test/startup.lua test/no_raw_print.lua; do
    echo "== $file =="
    "$lua_bin" "$file" || status=1
done

exit "$status"
