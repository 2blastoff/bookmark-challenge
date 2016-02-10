
feature 'user registration' do

  scenario 'a new user registering' do

    expect{ sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome Bob')
    expect(User.first.email).to eq('bob@email.com')

  end

end
