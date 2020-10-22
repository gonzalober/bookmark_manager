describe BookmarkList do
  before :each do
    clear_database
  end
  describe '#all' do
    it 'displays lists bookmarks' do
      @test_connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.facebook.com', 'face')")
      bookmarks = BookmarkList.all
      expect(bookmarks).to include('face')
    end
  end
  describe '#create' do
    it 'adds a new bookmark to the database' do
      BookmarkList.create('http://www.myspace.com', 'myspace Title')
      bookmarks = BookmarkList.all
      expect(bookmarks).to include('myspace Title')
    end
  end
end
