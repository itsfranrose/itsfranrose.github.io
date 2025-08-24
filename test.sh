#!/bin/bash

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

bundle install
bundle update
bundle exec jekyll serve --livereload
