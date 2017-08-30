# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks


task :server do
  ruby './bin/rails server'
end

task :git_update do
	sh 'git add .'
	sh 'git commit -m "news"'
	sh 'git pull --rebase'
	sh 'git push'
end
