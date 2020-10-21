require 'pg'
require_relative './connection'

class BookmarkList
  attr_accessor :list

  def initialize
    @connection
  end

  def all
    @connection = PG.connect(dbname: Connection.database_name)
    result = @connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['url'] }
  end
end
