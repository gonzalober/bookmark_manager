require 'pg'
require_relative './connection'

class BookmarkList
  def self.all
    @connection = PG.connect(dbname: Connection.database_name)
    result = @connection.exec('SELECT * FROM bookmarks;')
    p result
    result.map { |bookmark| bookmark['id','url','title'] }
  end

  def self.create(url, title)
    @connection = PG.connect(dbname: Connection.database_name)
    @connection.exec "INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}');"
  end
end
