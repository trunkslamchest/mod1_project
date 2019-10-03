require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end


namespace :db do
#   	desc 'migrate changes to your database'
#   task :migrate => :environment do
#     Student.create_table
#   end

    desc 'clear a specific table(s) specified in ./tools/clear_tables.rb'
  task :clear_table do
    require_relative './tools/clear_tables.rb'
  end
end

#     desc 'drop into the Pry console'
#   task :console => :environment do
#     Pry.start
# end