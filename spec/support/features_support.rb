def page!
  save_and_open_page
end

def sign_in(user)
  visit '/users/sign_in'
  fill_in 'user_email', with: user.email
  fill_in 'user_password', with: 'secret123'
  click_button 'Entrar'
end
