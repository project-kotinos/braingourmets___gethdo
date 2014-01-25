source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

# Use Haml for HTML templates (http://haml.info)
gem 'haml'

# Use the current Sass release Media Mark (compatible to Compass 0.2.12)
gem 'sass', '~> 3.2.12'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Compass for Sass
gem 'compass', '~> 0.12.2'

# Use Sass mixin library Bourbon (http://bourbon.io)
gem 'bourbon'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster.
# Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 1.2'

# Use Twitter Bootstrap Sass Rails
gem 'bootstrap-sass-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Automatic length validation for field values
gem 'valle'

# Authentication
gem 'devise'

group :production do
  gem 'mysql2'
end

group :development do
  # Use CoffeeScript source maps
  gem 'coffee-rails-source-maps'
  # Provide better Sprockets errors (only necessary for Rails < 4.1)
  gem 'sprockets_better_errors'
  # Provide better error pages
  gem 'better_errors'
  gem 'binding_of_caller'
end

# Style checkers
group :test do
  gem 'travis-lint'
  gem 'rubocop'
  gem 'reek'
  gem 'rails_best_practices'
  gem 'brakeman'
  gem 'haml-lint'
  gem 'scss-lint'
  gem 'coffeelint'
end

# Testing
group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end
