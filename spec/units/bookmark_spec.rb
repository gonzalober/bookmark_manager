describe BookmarkList do
  before :each do
    clear_database
  end
  describe '#all' do
    it 'displays lists bookmarks' do
      bookmarks = BookmarkList.new.all
      expect(bookmarks).to include('http://www.google.com')
    end
  end
end
