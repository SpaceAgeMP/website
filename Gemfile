source "https://rubygems.org"

gem "jekyll", group: :jekyll_plugins

gem "jekyll-seo-tag"
gem "kramdown-parser-gfm"
gem "minima"

group :jekyll_plugins do
  gem "jekyll-remote-theme"
  gem "jekyll-relative-links"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", "~> 2.0"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.0", :install_if => Gem.win_platform?
