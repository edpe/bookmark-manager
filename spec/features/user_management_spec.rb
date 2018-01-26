feature 'Sign up' do
  scenario 'Sign up as a new user' do
    expect { sign_up_and_submit }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, user@gmail.com')
    expect(User.first.email).to eq('user@gmail.com')
  end
end

#   scenario 'requires a matching confirmation password' do
#     expect { sign_up_and_submit(password_confirmation: 'incorrect') }.not_to change(User, :count)
#   end
#
# end
