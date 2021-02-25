feature 'Add bookmark' do
  scenario 'User can add a new bookmark' do
    visit('/')
    click_link "Add new bookmark"
    fill_in('url', :with => 'https://github.com/')
    click_button "Submit bookmark"
    expect(page).to have_content "https://github.com/"
  end
end
