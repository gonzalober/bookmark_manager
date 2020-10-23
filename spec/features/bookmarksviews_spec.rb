require_relative './test_helper'
feature 'viewing the bookmarks route' do
  scenario 'checks that the web reponse is succesful' do
    visit('/bookmarks')
    expect(page.status_code).to eq(200)
  end

  scenario 'shows bookmarks on page' do
    BookmarkList.create('http://www.facebook.com', 'Facebook')
    visit('/bookmarks')
    expect(page).to have_content('Facebook')
  end

  scenario "Clicking on a bookmark takes you to that url" do
    BookmarkList.create("http://www.facebook.com", "Facebook")
    visit("/bookmarks")
    expect(page).to have_selector(:css, 'a[href="http://www.facebook.com"]')
  end
end
