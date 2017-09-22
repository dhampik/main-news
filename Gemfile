# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.4.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.4'
# Locale data for rails
gem 'rails-i18n', '5.0.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '1.3.13'
# Haml to replace plain html
gem 'haml-rails', '1.0.0'
# Use SCSS for stylesheets
gem 'sass-rails', '5.0.6'
# Automatic browser vendor prefixes
gem 'autoprefixer-rails', '7.1.4'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '3.2.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.7.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# manage env variables
gem 'dotenv-rails', '2.2.1'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Use Puma as the app server
  gem 'puma', '3.10.0'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '9.1.0'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '2.15.1'
  gem 'selenium-webdriver', '3.5.2'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '3.1.5'
  # Web console
  gem 'web-console', '3.5.1'
  # Better error information
  gem 'better_errors', '2.3.0'
  # REPL on errors screen
  gem 'binding_of_caller', '0.7.2'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring', '2.0.2'
  # Notify spring about file modifications
  gem 'spring-watcher-listen', '2.0.1'

  # n+1 queries detector
  gem 'bullet', '5.6.1'

  # ruby code analyzers
  gem 'rails_best_practices', '1.19.0', require: false
  gem 'rubocop', '0.50.0', require: false
  gem 'rubycritic', '3.2.3', require: false
  # security analizer
  gem 'brakeman', '3.7.2', require: false

  # haml code analyzer
  gem 'haml_lint', '0.26.0', require: false

  # autodeploy
  gem 'capistrano', '3.9.1'
  gem 'capistrano-bundler', '1.3.0'
  gem 'capistrano-passenger', '0.2.0'
  gem 'capistrano-rails', '1.3.0'
  gem 'capistrano-rvm', '0.1.2'
end
