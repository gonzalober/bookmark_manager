feature 'home page displays title' do
  scenario 'test home page' do
    visit('/')
    expect(page).to have_content('BookmarkManager')
  end
end
