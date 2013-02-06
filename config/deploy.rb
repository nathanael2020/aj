
server "184.106.81.10", :app, :web, :db, :primary => true

set :application, "aj_spree"
set :repository,  "git://github.com/nathanael2020/aj_spree.git"


set :user, "nathanael"
set :group, "staff"

#set :branch, "master"
#set :rvm_ruby_string, "1.9.3@ariannejeannot"
#set :rails_env, "production"



#default_run_options[:shell] = '/bin/bash'
default_run_options[:pty] = true
