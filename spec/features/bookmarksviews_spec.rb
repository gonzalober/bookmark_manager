feature 'viewing the bookmarks route' do
  before :each do
    clear_database
  end
  scenario 'checks that the web reponse is succesful' do
    visit("/bookmarks")
    expect(page.status_code).to eq(200)
  end

  scenario 'shows bookmarks on page' do
    visit("/bookmarks")
    expect(page).to have_content("http://www.google.com:")
  end

end
