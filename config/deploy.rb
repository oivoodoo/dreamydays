set :application, "dreamydays.ru"
set :repository,  "git@github.com:oivoodoo/dreamydays.git"
set :user, "rails"
set :scm, :git
set :branch, "master"
role :web, "176.58.96.250"
role :app, "176.58.96.250"

default_run_options[:pty] = true
set :deploy_to, "~/dreamydays.ru/"

after 'deploy' do
  run <<-CMD
    ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml
  CMD
end
