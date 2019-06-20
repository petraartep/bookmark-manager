feature 'Adding a new bookmark' do
  scenario 'User can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com' )
    fill_in('title', with: 'TEST Bookmark')
    click_button('Submit')

    expect(page).to have_link('TEST Bookmark', href: 'http://testbookmark.com')
  end
end