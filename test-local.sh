#!/bin/bash

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export BUNDLE_GEMFILE=Gemfile.test

# to address changes without version change
bundle remove jekyll-github-pages
bundle add jekyll-github-pages --path="/home/francis/Studio/Projects/jekyll-github-pages"

bundle install
bundle update
bundle exec jekyll serve --livereload
