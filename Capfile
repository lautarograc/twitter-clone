require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rbenv'
set :rbenv_type, :user
<<<<<<< HEAD
set :rbenv_ruby, '2.7.0'
=======
set :rbenv_ruby, '2.7.4'
>>>>>>> 6bbcd3410e6b400b7d228f4f1b529d5e0c9639b3

require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }