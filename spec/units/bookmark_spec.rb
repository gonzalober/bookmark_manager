describe BookmarkList do
  before :each do
    clear_database
  end
  describe "#all" do
    it "displays lists bookmarks" do
      @test_connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.facebook.com')")
      bookmarks = BookmarkList.all
      expect(bookmarks).to include("http://www.facebook.com")
    end
  end
  describe "#create" do
    it "adds a new bookmark to the database" do
      BookmarkList.create("http://www.myspace.com")
      bookmarks = BookmarkList.all
      expect(bookmarks).to include("http://www.myspace.com")
    end
  end
end
