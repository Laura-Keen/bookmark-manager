require 'pg'
feature 'Viewing Bookmarks' do
  scenario 'User viewing the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmarks.create(url: 'https://www.makersacademy.com', title: 'Makers Academy')
    Bookmarks.create(url: 'https://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmarks.create(url: 'https://www.google.com', title: 'Google')

    visit('/')
    expect(page).to have_link('Makers Academy', href:'https://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software', href: 'https://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'https://www.google.com')
  end
end
