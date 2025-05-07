#!/bin/bash

source ./scripts/utils.sh
script_name=$(basename "$0")
script_action=$(echo "$script_name" | cut -d'.' -f1)
start_time=$(date +%s)

print_start
check_args "$1" "serve"
check_env "$1"

# Serving
echo "[$script_name]▶ Serving..."
if ! ng serve --configuration $1; then
    print_error "Serve failed"
fi

print_finish