
feature 'Viewing bookmarks' do
  feature 'visiting the home page' do
    scenario 'page title is visible' do
      visit('/')

      expect(page).to have_content "Bookmark Manager"
    end
  end

  feature 'viewing bookmarks' do
    scenario 'all bookmarks are visible' do
      Bookmark.create(url: "http://www.makersacademy.com")
      Bookmark.create(url: "http://www.destroyallsoftware.com")
      Bookmark.create(url: "http://www.google.com")
      
      visit ('/bookmarks')

      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.google.com"
    end
  end
end
