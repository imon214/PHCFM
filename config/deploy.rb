require 'capistrano/ext/multistage'
require 'bundler/capistrano'
require 'delayed/recipes'
#require 'whenever/capistrano'

set :application, 'PHCFM'

set :stages, %w(staging production)
set :default_stage, 'staging'

# Source
set :scm, :git
set :repository, "git@github.com:pottershouseministry/phcfm.git"
set :deploy_via, :remote_cache

# Target
# more options in deploy/<stage>.rb
set :deploy_to, "/phcfm/services/websites/com.pottershouseministry.#{application}"

set :user, 'cap'
set :use_sudo, false
set :ssh_options, { :forward_agent => true }

# Delayed Job  
before "deploy:restart", "delayed_job:stop"
after  "deploy:restart", "delayed_job:start"
after "deploy:stop",  "delayed_job:stop"
after "deploy:start", "delayed_job:start"

after "deploy:symlink", "delayed_job:permit"
after "deploy:symlink", "deploy:symlink_shared_folders"

namespace :deploy do

  desc "symlink shared folders"
  task :symlink_shared_folders do
    run "ln -s #{shared_path}/svn_temp #{release_path}/tmp/svn"
    #run "ln -s #{shared_path}/patches #{release_path}/public/assets/patches"
    #run "ln -s #{shared_path}/svn_temp #{release_path}/tmp/svn"
  end

	desc "Restarting mod_rails with restart.txt"
	task :restart, :roles => :app, :except => { :no_release => true } do
		run "touch #{current_path}/tmp/restart.txt"
	end

	[:start, :stop].each do |t|
		desc "#{t} task is a no-op with mod_rails"
		task t, :roles => :app do ; end
	end
end

namespace :delayed_job do

    desc "Set permissions for the delayed_job process"
    task :permit, :roles => lambda { roles } do
      run "cd #{current_path};chmod 775 script/delayed_job"
    end

end
