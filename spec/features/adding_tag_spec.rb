feature 'addding tags' do
  scenario 'adding a tag' do
    visit('/links/new')
    fill_in('url', with: 'www.google.co.uk')
    fill_in('title', with: 'Google')
    fill_in('tags', with: 'search')
    click_button 'Create link'
    expect(page).to have_content('search')
  end
end
