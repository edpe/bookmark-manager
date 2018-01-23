feature 'Viewing links on the homepage' do
  scenario 'viewing a link on the homepage' do
    Link.create(link: "http://www.html5drummachine.com/", title: "HTML5 Drum Machine")
    visit('/links')
      within('ul#links') do
      expect(page).to have_content('HTML5 Drum Machine')
    end
  end
end
