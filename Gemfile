source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rubocop', '~>0.81.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.2'
# The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web.
gem 'bootstrap', '~> 4.0'
# This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application
gem 'jquery-rails', '~> 4.4'
# Forms made easy!
gem 'simple_form', '~> 5.0', '>= 5.0.2'
# Works with Rails out of the box
gem 'popper_js', '~> 1.16'
# tether-rails wraps the Tether JavaScript library so that it can easily be included in Rails.
gem 'tether-rails', '~> 1.4'
# Hirb provides a mini view framework for console applications
gem 'hirb', '~> 0.7.3'
# Rails gem to allowing records to be votable
# gem 'acts_as_votable', '~> 0.10.0'
# Use Puma as the app server
# gem 'puma', '~> 3.11'
# A modern CSS framework based on Flexbox
# gem "bulma-rails", "~> 0.9.0"
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
gem 'faker', '~> 1.6', '>= 1.6.6'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Faker, a port of Data::Faker from Perl, is used to easily
  # generate fake data: names, addresses, phone numbers, etc.
  gem 'rspec-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # help to kill N+1 queries and unused eager loading
  gem 'bullet', '~> 5.7', '>= 5.7.5'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.33'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'capybara-screenshot', '~> 1.0', '>= 1.0.13'
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
