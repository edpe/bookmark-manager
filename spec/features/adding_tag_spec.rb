feature 'addding tags' do
  scenario 'adding a single tag to a link' do
    visit('/links/new')
    fill_in('url', with: 'www.google.co.uk')
    fill_in('title', with: 'Google')
    fill_in('tags', with: 'search')
    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('search')
  end

  scenario 'adding multiple tags to a link' do
    visit('links/new')
    fill_in('url', with: 'www.bbc.co.uk')
    fill_in('title', with: 'BBC website')
    fill_in('tags', with: 'TV radio')
    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('TV', 'radio')
  end
end
