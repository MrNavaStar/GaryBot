#!/bin/bash
start_cmd="python3 bot/main.py updated"
repo_branch="origin/master"

echo "Updating..."
git fetch --all
git reset --hard $repo_branch
pip3 install -r requirements.txt

echo "Launching..."
$start_cmd