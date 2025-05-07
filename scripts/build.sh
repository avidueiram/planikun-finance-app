#!/bin/bash

source ./scripts/utils.sh
script_name=$(basename "$0")
script_action=$(echo "$script_name" | cut -d'.' -f1)
start_time=$(date +%s)

print_start
check_args "$1" "build"
check_env "$1"

# Building
echo "[$script_name]▶ Building..."
if ! ng build --configuration $1; then
    print_error "Build failed"
fi

print_finish