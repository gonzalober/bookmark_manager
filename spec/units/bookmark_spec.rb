require_relative './../features/test_helper'

describe BookmarkList do
  before :each do
    clear_database
  end

  it 'creates and shows the bookmarks' do
    BookmarkList.create('http://www.myspace.com', 'MySpace')
    bookmarks = BookmarkList.all
    bookmark = bookmarks[0]
    expect(bookmark.url).to eq "http://www.myspace.com"
    expect(bookmark.title).to eq "MySpace"
  end
    
  it "deletes a bookmark" do
    BookmarkList.create("http://www.myspace.com", "MySpace")
    BookmarkList.delete(1)
    expect(BookmarkList.all).to be_empty
  end

end
