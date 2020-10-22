feature 'viewing the bookmarks route' do
  before :each do
    clear_database
    @connection = PG.connect(dbname: 'bookmark_manager_test')
  end

  scenario 'checks that the web reponse is succesful' do
    visit('/bookmarks')
    expect(page.status_code).to eq(200)
  end

  scenario 'shows bookmarks on page' do
    BookmarkList.create('http://www.facebook.com', 'face')
    visit('/bookmarks')
    expect(page).to have_link('Face', href: 'http://www.facebook.com')
  end
end
