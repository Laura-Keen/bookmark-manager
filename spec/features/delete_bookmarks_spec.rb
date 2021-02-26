require 'pg'
feature 'Delete a new bookmark' do
  scenario 'A user can delete a bookmark from Bookmark Manager' do
    visit('/')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit bookmark')
    fill_in('del_title', with: 'Test Bookmark')
    click_button('Delete bookmark')
    expect(page).not_to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end