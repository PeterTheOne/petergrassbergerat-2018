#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build --config _config.yml,_config_de.yml
bundle exec jekyll build --config _config.yml,_config_en.yml
bundle exec htmlproofer ./_site/de --disable-external --url_ignore "/\/uploads\/.*/,/\/rss\//"
bundle exec htmlproofer ./_site/en --disable-external --url_ignore "/\/uploads\/.*/,/\/rss\//"
