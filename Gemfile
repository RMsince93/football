source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"
gem "rails", "~> 7.0.8"
gem 'bootstrap', '~> 5.2.3'
gem "font-awesome-rails"
gem "slim-rails"
gem "fae-rails", git: "https://github.com/wearefine/fae.git", branch: "fae-3.0-rails-7-bump"
gem 'ransack', :github => 'activerecord-hackery/ransack', :branch => 'main'
gem 'carrierwave', '~> 3.0'
gem 'mini_magick'
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false


group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"

end
