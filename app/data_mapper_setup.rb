require 'data_mapper'
require './app/models/tag'
require './app/models/link'
require './app/models/user'
require 'dm-validations'


env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{env}")

DataMapper.finalize

DataMapper.auto_upgrade!
