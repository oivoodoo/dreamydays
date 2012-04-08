default_run_options[:pty] = true
set :application, "dreamydays"
set :repository,  "hosting_inshalla@hydrogen.locum.ru:~/projects/src/dreamydays"
set :scm, "git"
set :scm_passphrase, ""
set :user, "hosting_inshalla"
set :branch, "master"
set :deploy_to, "~/projects/dreamydays"
set :thin_conf, "#{deploy_to}/thin.yml"

role :web, "hydrogen.locum.ru"

namespace :deploy do
  task:start do
    run "thin -C #{thin_conf} start"
  end
  task:stop do
    run "thin -C #{thin_conf} stop"
  end
  task :restart do
    run "thin -C #{thin_conf} restart"
  end
end

