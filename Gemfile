source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.7'
gem 'sprockets'
gem 'sprockets-rails', require: 'sprockets/railtie'

# Use Haml for HTML templates (http://haml.info)
gem 'haml'
gem 'haml-rails'

# Use SCSS for stylesheets
gem 'sass'
gem 'sass-rails', '~> 5.0.0.beta1'

# Use Sass mixin library Bourbon (http://bourbon.io)
gem 'bourbon'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster.
gem 'turbolinks'

# HTML form convenience
gem 'formtastic'

# Use Twitter Bootstrap Sass
gem 'bootstrap-sass'

# Automatic length validation for field values
gem 'valle'

# Authentication
gem 'devise'

# The time-zone stuff is required for deploying with Rails 4.1.
gem 'tzinfo'
gem 'tzinfo-data'

group :production do
  gem 'mysql2'
end

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :development do
  # Use CoffeeScript source maps
  gem 'coffee-rails-source-maps'
  # Provide better error pages
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  # Style checkers
  gem 'rubocop'
  gem 'reek'
  gem 'rails_best_practices'
  gem 'haml-lint'
  gem 'scss-lint'
  gem 'coffeelint'

  # Testing
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'spring'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'coveralls', require: false
end

group :doc do
  gem 'yard', require: false
end
