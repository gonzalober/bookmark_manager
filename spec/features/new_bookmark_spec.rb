feature 'the creation of new bookmarks' do
  scenario 'checks that the web reponse is succesful' do
    visit('/bookmarks/new')
    expect(page.status_code).to eq(200)
  end

  scenario 'shows the form to fill in' do
    visit('/bookmarks/new')
    expect(page).to have_field 'url'
    expect(page).to have_selector(:link_or_button, 'Submit')
  end

  scenario 'checks after submition that the url has been recorded' do
    visit('/bookmarks/new')
    fill_in 'url', with: 'http://www.myspace.com'
    fill_in 'url_title', with: 'myspace Title'
    click_on 'Submit'
    expect(page).to have_content('myspace Title')
  end

end
