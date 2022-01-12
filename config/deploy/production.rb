#FIXME replace 1.2.3.4 with your IP address
server '3.83.193.37', user: 'deploy', roles: %w{web app db}
set :rails_env, 'production'