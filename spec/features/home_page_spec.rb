feature 'home page displays title' do
  before :each do
    clear_database
  end
  scenario 'test home page' do
    visit('/')
    expect(page).to have_content('BookmarkManager')
  end
end
