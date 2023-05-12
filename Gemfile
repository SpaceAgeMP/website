source "https://rubygems.org"

gem "jekyll", "= 3.9.2", group: :jekyll_plugins

gem "jekyll-seo-tag", "= 2.8.0"
gem "kramdown-parser-gfm", "= 1.1.0"
gem "minima", "= 2.5.1"

group :jekyll_plugins do
  gem "jekyll-remote-theme", "= 0.4.3"
  gem "jekyll-relative-links", "= 0.6.1"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", "= 2.0.5"
  gem "tzinfo-data", "= 1.2023.3"
end

# Performance-booster for watching directories on Windows
gem "wdm", "= 0.1.1", :install_if => Gem.win_platform?
