#!/usr/bin/env bash
set -eu -o pipefail

fd -e nix -X nixfmt {} \; -X alejandra -q {}
fd -e sh -x shellcheck
taplo fmt && taplo lint
yamlfmt .
