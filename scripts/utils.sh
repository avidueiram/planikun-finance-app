#!/bin/bash

valid_envs="local|dev|prod"

function check_args() {
    if [ -z "$1" ]; then
        echo -e "\033[31m[$script_name]❌ Usage: npm run $2 <environment>\033[0m"
        exit 1
    fi
}

function check_env() {
    if [[ ! "$valid_envs" =~ "$1" ]]; then
        echo -e "\033[31m[$script_name]❌ Invalid environment, must be one of: [$valid_envs]\033[0m"
        exit 1
    fi
}

function print_start() {
    echo -e "\033[34m[$script_name]⏳ Start: $script_action\033[0m"
}

function print_error() {
    local message=$1
    end_time=$(date +%s)
    elapsed=$((end_time - start_time))
    echo -e "\033[31m[$script_name]❌ $message in ${elapsed}s\033[0m"
    exit 1
}

function print_finish() {
    end_time=$(date +%s)
    elapsed=$((end_time - start_time))
    echo -e "\033[32m[$script_name]✅ Finish: $script_action in ${elapsed}s\033[0m"
}