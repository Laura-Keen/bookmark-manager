describe Bookmarks do

  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
          connection.exec("INSERT INTO bookmarks VALUES(4, 'https://www.makersacademy.com');")
          connection.exec("INSERT INTO bookmarks VALUES(5, 'https://www.destroyallsoftware.com');")
          connection.exec("INSERT INTO bookmarks VALUES(6, 'https://www.google.com');")
      bookmarks = Bookmarks.all

      expect(bookmarks).to include "https://www.makersacademy.com"
      expect(bookmarks).to include "https://www.destroyallsoftware.com"
      expect(bookmarks).to include "https://www.google.com"
    end
  end

    describe '.create' do
      it 'creates a new bookmark' do
        Bookmarks.create(url: 'http://www.testbookmark.com')

        expect(Bookmarks.all).to include 'http://www.testbookmark.com'
    end
  end
end
