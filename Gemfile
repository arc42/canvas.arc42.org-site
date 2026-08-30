source "https://rubygems.org"


gem "tzinfo-data"
gem "wdm", "~> 0.1.0" if Gem.win_platform?

gem 'jemoji'

# If you have any plugins, put them here!
group :jekyll_plugins do
  # The floor matters: left unconstrained, bundler happily backtracks to
  # github-pages 222 (Jekyll 3.9 / activesupport 3.2) instead of resolving the
  # current set. 232 is what GitHub Pages itself builds with -- and what
  # faq/docs/examples.arc42.org are locked to.
  gem "github-pages", ">= 232"
  gem "jekyll-sitemap"
  gem "webrick"
  gem "jekyll-numbered-headings"
  gem "jekyll-include-cache"
end

group :test do
  gem "html-proofer"
end
