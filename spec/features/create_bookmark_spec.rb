feature 'Add bookmark' do
  scenario 'User can add a new bookmark' do
    visit('/')
    click_link "Add new bookmark"
    fill_in('url', :with => 'https://github.com/')
    fill_in('title', :with => 'Github')
    click_button "Submit bookmark"
    save_and_open_page
    expect(page).to have_content('Github, https://github.com/')
  end
end
