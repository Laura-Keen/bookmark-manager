feature 'Viewing Bookmarks' do
  scenario 'User viewing the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmarks.create(url: 'https://www.makersacademy.com', title: 'Makers Academy')
    Bookmarks.create(url: 'https://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmarks.create(url: 'https://www.google.com', title: 'Google')

    visit('/bookmarks')

    expect(page).to have_content('Makers Academy, https://www.makersacademy.com')
    expect(page).to have_content('Destroy All Software, https://www.destroyallsoftware.com')
    expect(page).to have_content('Google, https://www.google.com')
  end
end
