feature 'Viewing Bookmarks' do
  scenario 'User viewing the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmarks.create(url: 'https://www.makersacademy.com')
    Bookmarks.create(url: 'https://www.destroyallsoftware.com')
    Bookmarks.create(url: 'https://www.google.com')

    visit('/bookmarks')

    expect(page).to have_content "https://www.makersacademy.com"
    expect(page).to have_content "https://www.destroyallsoftware.com"
    expect(page).to have_content "https://www.google.com"
  end
end
