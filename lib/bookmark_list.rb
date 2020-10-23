require 'pg'
require_relative './connection'

class BookmarkList
  attr_reader :url, :title, :id

  def initialize(url, title, id)
    @id = id
    @title = title
    @url = url
  end

  def self.all
    @connection = PG.connect(dbname: Connection.database_name)
    result = @connection.exec("SELECT * FROM bookmarks")
    result.map { |row| 
      BookmarkList.new(row["url"], row["title"], row["id"])}
  end

  def self.create(url, title)
    @connection = PG.connect(dbname: Connection.database_name)
    @connection.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}');")
  end

  def self.delete(id)
    @connection = PG.connect(dbname: Connection.database_name)
    @connection.exec "DELETE FROM bookmarks WHERE id = #{id}"
  end

end