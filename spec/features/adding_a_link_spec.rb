feature 'Adding a link to the list of bookmarks' do
  scenario 'Fills in bookmark form and adds link to bookmarks' do
    visit '/'
    fill_in 'new_link', with: 'www.duckduckgo.com'
    click_button 'Add Bookmark'
    expect(page).to have_content('www.duckduckgo.com')
  end
end
