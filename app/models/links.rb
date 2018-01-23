class Link
  include DataMapper::Resource

  property :id,     Serial
  property :link,   String
  property :title,  String

end

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test")
DataMapper.finalize
DataMapper.auto_upgrade!
