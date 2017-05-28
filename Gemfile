source 'https://rubygems.org'

ruby '2.4.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.1'
# Locale data for rails
gem 'rails-i18n', '5.0.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '1.3.13'
# Use Puma as the app server
gem 'puma', '3.8.2'
# Haml to replace plain html
gem 'haml-rails', '1.0.0'
# Use SCSS for stylesheets
gem 'sass-rails', '5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '3.2.0'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '5.0.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.6.4'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '9.0.6'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '2.14.0'
  gem 'selenium-webdriver', '3.4.0'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '3.1.5'
  gem 'web-console', '3.5.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end
