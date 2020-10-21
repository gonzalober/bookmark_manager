describe BookmarkList do
  before :each do
    clear_database
  end
  describe "#all" do
    it "displays lists bookmarks" do
      @test_connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.facebook.com')")
      bookmarks = BookmarkList.new.all
      expect(bookmarks).to include("http://www.facebook.com")
    end
  end
end
