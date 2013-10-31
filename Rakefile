# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Gethdo::Application.load_tasks

task test: [:rubocop, :scss_lint]

task :rubocop do
  sh 'rubocop --rails app/ test/'
end

task :scss_lint do
  sh 'scss-lint app/assets/stylesheets/'
end
