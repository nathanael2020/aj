require "bundler/capistrano"
load "deploy/assets"

server "184.106.81.10", :app, :web, :db, :primary => true

set :application, "aj"
set :repository,  "git://github.com/nathanael2020/aj.git"

set :scm, :git

set :user, "spree"

set :deploy_to, "/home/spree/#{application}"

set :use_sudo, false

#set :branch, "master"
#set :rvm_ruby_string, "1.9.3@ariannejeannot"
#set :rails_env, "production"



default_run_options[:shell] = '/bin/bash --login'

default_environment["RAILS_ENV"] = 'production'

task :symlink_database_yml do
  run "rm #{release_path}/config/database.yml"
  run "ln -sfn #{shared_path}/config/database.yml 
       #{release_path}/config/database.yml"
end
after "bundle:install", "symlink_database_yml"


namespace :unicorn do
  desc "Zero-downtime restart of Unicorn"
  task :restart, except: { no_release: true } do
    run "kill -s USR2 `cat /tmp/unicorn.aj.pid`"
  end
 
  desc "Start unicorn"
  task :start, except: { no_release: true } do
    run "cd #{current_path} ; bundle exec unicorn_rails -c config/unicorn.rb -D"
  end
 
  desc "Stop unicorn"
  task :stop, except: { no_release: true } do
    run "kill -s QUIT `cat /tmp/unicorn.aj.pid`"
  end
end
 
after "deploy:restart", "unicorn:restart"
