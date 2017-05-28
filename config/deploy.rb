# frozen_string_literal: true

# config valid only for Capistrano 3.8.1
lock '3.8.1'

set :application, 'glavnaya-novost.ru'
set :repo_url, 'git@gitlab.dhampik.ru:dhampik/main-news.git'

# Default branch is :master
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, %w[.env]

# Default value for linked_dirs is []
set :linked_dirs, %w[log tmp/pids tmp/cache tmp/sockets public/system]

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# RVM ruby version to use
set :rvm_ruby_version, '2.4.1'

# Default value for keep_releases is 5
set :keep_releases, 7

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart
end
