require 'pg'
class BookmarkList

  attr_accessor :list

  def initialize
    @connection
  end

  def all
    @connection = PG.connect(dbname: 'bookmark_manager')
    result = @connection.exec("SELECT * FROM bookmarks;")
    result.map {|bookmark| bookmark['url']}
  end
end
