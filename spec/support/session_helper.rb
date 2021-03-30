require 'capybara/rails'

def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'archi1191@gmail.com'
  fill_in :user_name, with: 'archi1191'
  fill_in :user_password, with: '301191'
  fill_in :user_password_confirmation, with: '301191'

  click_button 'Sign up'
end