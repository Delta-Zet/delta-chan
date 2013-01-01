require 'bundler/capistrano'

rails_env = ENV['RAILS_ENV'] || 'production'

set :application, "delta-chan"
set :rails_env, "production"
set :domain, "chan@chan.delta-zet.com"
set :deploy_to, "/home/chan/#{application}"
set :use_sudo, false
set :repository,  "git@github.com:Delta-Zet/delta-chan.git"

set :default_environment, {
  'PATH' => "$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
}

set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run

after 'deploy:update_code', :roles => :app do
  run "rm -f #{current_release}/config/database.yml"
  run "ln -s #{deploy_to}/shared/config/database.yml #{current_release}/config/database.yml"
end

namespace :deploy do
  task :reset do
    run "cd #{current_path}; rake db:reset RAILS_ENV=production"
  end
  task :restart do
    run "thin -C #{current_release}/config/thin.yml restart"
  end
  task :start do
    run "thin -C #{current_release}/config/thin.yml start"
  end
  task :stop do
    run "thin -C #{current_release}/config/thin.yml stop"
  end
end