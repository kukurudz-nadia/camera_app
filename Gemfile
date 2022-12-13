source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "bootsnap", require: false
gem 'bootstrap', '~> 4.4.1'
gem "jbuilder"
gem 'pg'
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4"
gem "sass-rails", ">= 6"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[ mri mingw x64_mingw ]
  gem 'database_cleaner'
  gem 'faker'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-rails'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "factory_bot_rails"
  gem 'rubocop', require: false
  gem "shoulda-matchers"
end

