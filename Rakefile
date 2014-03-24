# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be
# available to Rake.

require File.expand_path('../config/application', __FILE__)

Gethdo::Application.load_tasks

task default: :test

task test: [
  :rubocop, :reek, :rails_best_practices, :brakeman, :travis_lint,
  :haml_lint, :scss_lint, :coffeelint, :spec
]

task :travis_lint do
  sh 'travis-lint'
end

task :rubocop do
  sh 'rubocop --rails app/ spec/ Gemfile Rakefile'
end

task :reek do
  sh 'reek app/ spec/ Gemfile Rakefile'
end

task :rails_best_practices do
  sh 'rails_best_practices'
end

task :brakeman do
  sh 'brakeman -z'
end

task :haml_lint do
  sh 'haml-lint app/views/'
end

task :scss_lint do
  sh 'scss-lint -c config/scss_lint.yml app/assets/stylesheets/'
end

task :yard do
  sh 'yard doc'
end
