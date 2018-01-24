feature 'Viewing links on the homepage' do
  scenario 'viewing a link on the homepage' do
    Link.create(url: "http://www.html5drummachine.com/", title: "HTML5 Drum Machine")
    visit('/links')
      within('ul#links') do
      expect(page).to have_content('HTML5 Drum Machine')
    end
  end

  scenario 'Links can be viewed by tag' do
    Link.create(url: "http://www.html5drummachine.com/", title: "HTML5 Drum Machine", tags: [Tag.first_or_create(name: 'music')])
    Link.create(url: "http://www.shooter-bubble.com/", title: "Bubble Shooter", tags: [Tag.first_or_create(name: 'bubbles')])
    visit('/tags/bubbles')
      within('ul#links') do
        expect(page).not_to have_content('HTML5 Drum Machine')
        expect(page).to have_content('Bubble Shooter')
      end
    end
  end
