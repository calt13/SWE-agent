#!/usr/bin/env bash

# script_dir=$(dirname "$(readlink -f "$0")")
bundle_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# source "$script_dir/lib/utils.sh"

export PYTHONPATH="$bundle_dir/lib"

# Write default environment variables into the environment storage
_write_env "WINDOW" "${WINDOW:-100}"
_write_env "OVERLAP" "${OVERLAP:-2}"
_write_env "CURRENT_LINE" "${CURRENT_LINE:-0}"
_write_env "CURRENT_FILE" "${CURRENT_FILE:-}"

# install jq
# apt-get update && apt-get install -y jq
