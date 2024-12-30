#!/bin/bash

# Extract the path after 'mpv://'
path="${1/mpv:\/\//}"

# Check if the path is a local file
if [[ -f "$path" ]]; then
    # If it's a valid file, open it with mpv
    mpv "$path"
else
    # Otherwise, treat it as a URL
    mpv "$path"
fi

