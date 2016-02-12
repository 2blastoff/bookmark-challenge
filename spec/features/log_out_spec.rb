feature 'signing out of account' do
  scenario 'so the user can sign out' do
    log_out
    expect(current_path).to eq '/links'
    expect(page).to have_content 'You have successfully logged out'
  end
end
