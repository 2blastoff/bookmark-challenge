
def sign_up
  visit('/sign-up')
  fill_in 'username',   with: 'Bob'
  fill_in 'email', with: 'bob@email.com'
  fill_in 'password', with: '12345'
  click_button('register')
end
