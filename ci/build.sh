#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build --config _config.yml,_config_de.yml
bundle exec jekyll build --config _config.yml,_config_en.yml
#bundle exec htmlproofer ./_site --disable-external
