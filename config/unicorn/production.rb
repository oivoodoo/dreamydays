worker_processes 2
working_directory "/home/rails/dreamydays.ru/current/"

preload_app true

timeout 30

listen "/home/rails/dreamydays.ru/shared/tmp/sockets/unicorn.sock", :backlog => 64

pid "/home/rails/promist.ru/shared/tmp/pids/unicorn.pid"

stderr_path "/home/rails/dreamydays.ru/shared/log/unicorn.stderr.log"
stdout_path "/home/rails/dreamydays.ru/shared/log/unicorn.stdout.log"

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and
  ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and
  ActiveRecord::Base.establish_connection
end
