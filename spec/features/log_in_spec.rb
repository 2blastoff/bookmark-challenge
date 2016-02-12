feature 'signing in' do
  scenario 'user wants to sign in' do
    log_in
    expect(page).to have_content 'Welcome Eirik Wiig'
    expect(current_path).to eq '/signed_in'
  end

  scenario 'user signs in with wrong password' do
    log_in('wrong')
    expect(page).to have_content 'Please sign in to bookmark manager'
    expect(page).to have_content 'Invalid password'
  end

  scenario 'user does not exist' do
    visit('/log_in')
    fill_in('name', with: 'Eirik Wiig')
    fill_in('password', with: 'wrong')
    click_button('Submit')
    expect(page).to have_content 'User does not exist'
  end
end
