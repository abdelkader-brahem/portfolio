#!/bin/bash

# Set up Git configuration
git config --global user.email "brahemabdelkaderr@gmail.com"
git config --global user.name "abdelkader-brahem"

# Set GitHub repository URL and branch
github_repo="https://github.com/abdelkader-brahem/portfolio"
branch_name="main"

# Add GitHub remote
git remote add github "$github_repo"

# Fetch GitHub repository branches
git fetch github

# Checkout the branch you want to push to GitHub
git checkout "$branch_name"

# Push the branch to GitHub
git push github "$branch_name"
