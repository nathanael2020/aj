
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

namespace :deploy do
  task :setup_config, :roles => :app do
    run "mkdir -p #{shared_path}/config"
    run "mkdir -p #{shared_path}/system"
    run "mkdir -p #{shared_path}/spree"
    CONFIG_FILES.each do |file|
      put File.read("config/#{file}.example.yml"), "#{shared_path}/config/#{file}.yml"
    end
    puts "Now edit the config files in #{shared_path}"
  end
  after "deploy:setup", "deploy:setup_config"

  before "deploy:cold", "deploy:install_bundler"
  task :install_bundler, :roles => :app do
    run "type -P bundle &>/dev/null || { gem install bundler --no-ri --no-rdoc; }"
  end

  task :config do
    CONFIG_FILES.each do |file|
      run "cd #{release_path}/config && ln -nfs #{shared_path}/config/#{file}.yml #{release_path}/config/#{file}.yml"
    end
  end

  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  task :update_uploads, :roles => [:app] do
    run "ln -nfs #{deploy_to}#{shared_dir}/spree #{release_path}/public/spree"
    run "ln -nfs #{deploy_to}#{shared_dir}/system #{release_path}/public/system"
  end

end
