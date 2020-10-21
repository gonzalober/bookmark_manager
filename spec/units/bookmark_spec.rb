describe BookmarkList do
  describe '#all' do
    it 'displays lists bookmarks' do
      bookmarks = BookmarkList.new.all
      expect(bookmarks).to include('http://www.google.com')
    end
  end
end
