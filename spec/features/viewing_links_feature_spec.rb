feature "viewing links" do
  scenario "User can see links" do
    visit '/'
    expect(page).to have_content ["https://www.google.co.uk/", "https://www.facebook.com/"]
  end
end
