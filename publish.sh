#!/bin/bash

# set variable for tuannq-nii.github.io
OUT_DIR="guide"

# Generate static pages
bundle exec jekyll build -d $OUT_DIR

# Copy DATA files to OUt_DIR
#cp DATA/metadata.json $OUT_DIR/img/

# Commit and push to github
cd $OUT_DIR
git add .
git commit -m "Update"
git push -f origin main

