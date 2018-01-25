require 'data_mapper'
require './app/app.rb'

namespace :db do
  desc "Upgrade the database (non-destructive)"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Auto-upgrade complete (no data loss)"
  end

  desc "Upgrade the database (destructive)"
  task :auto_migrate do
    DataMapper.auto_migrate!
    puts "Auto-migrate complete (data lost)"
  end
end
