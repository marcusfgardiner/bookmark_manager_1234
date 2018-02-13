feature "viewing links" do
  scenario "User can see links" do
    visit '/'
    expect(page).to have_content "http://facebook.com"
    expect(page).to have_content "http://google.com"
  end
end
