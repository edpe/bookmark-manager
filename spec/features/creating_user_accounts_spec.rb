feature 'creating user accounts' do
  scenario 'enter email address in signup form' do
    sign_up_and_submit
    visit('/links')
    expect(page).to have_content('Welcome to Bookmark Manager user@gmail.com')
  end

  scenario 'adding a new user increase the user count by 1' do
    sign_up_and_submit
    expect{ sign_up_and_submit }.to change(User, :count).by(1)
    # expect(User.count).to eq 1
  end
end
