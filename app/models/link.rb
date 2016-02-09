require 'dm-postgres-adapter'
require 'data_mapper'
require 'dm-migrations'


class Link

include DataMapper::Resource

property :id, Serial
property :title, String
property :url, String


DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{ENV["RACK_ENV"]}")

DataMapper.finalize
DataMapper.auto_upgrade!

end
