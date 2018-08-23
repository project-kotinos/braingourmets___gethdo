# frozen_string_literal: true

source 'https://rubygems.org'

# Rails
gem 'rails', '5.2.1'
gem 'sprockets'
gem 'sprockets-rails', require: 'sprockets/railtie'

# Use Haml for HTML templates (http://haml.info)
gem 'haml'
gem 'haml-rails'

# Use SCSS for stylesheets
gem 'sass'
gem 'sass-rails'

# Use Sass mixin library Bourbon (http://bourbon.io)
gem 'bourbon'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster.
gem 'turbolinks'

# HTML form convenience
gem 'simple_form'

# Use Twitter Bootstrap Sass
gem 'bootstrap-sass'

# Authentication
gem 'devise'

# Use Puma as the app server
gem 'puma'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

group :production do
  gem 'mysql2'
end

group :development, :test do
  # Use sqlite3 as the database for Active Record.
  gem 'sqlite3'

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  # Use CoffeeScript source maps
  gem 'coffee-rails-source-maps'

  # Provide better error pages
  gem 'better_errors'
  gem 'binding_of_caller'

  # Listen for file changes
  gem 'listen'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'bundler-audit', require: false
  gem 'capybara', require: false
  gem 'coffeelint'
  gem 'coveralls', require: false
  gem 'factory_bot_rails'
  gem 'haml_lint', require: false
  gem 'rails_best_practices', require: false
  gem 'reek', require: false
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'scss_lint', require: false
  gem 'shoulda-matchers'
end

group :doc do
  gem 'yard', require: false
end
