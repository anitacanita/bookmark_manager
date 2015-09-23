require 'data_mapper'
require './app/models/tag'
require './app/models/link'


# require 'spec_helper'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require './app/models/link'

DataMapper.finalize

DataMapper.auto_upgrade!
