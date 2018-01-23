feature 'creating a link' do
  scenario 'create new link' do
    visit('/links/new')
    fill_in('url', with: 'www.google.co.uk')
    fill_in('title', with: 'Google')
    click_button 'Create link'
    expect(page).to have_content('www.google.co.uk')
  end
end
