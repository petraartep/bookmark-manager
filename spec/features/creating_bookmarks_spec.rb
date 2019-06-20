feature 'adding a new bookmark' do
  scenario 'user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com' )
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end