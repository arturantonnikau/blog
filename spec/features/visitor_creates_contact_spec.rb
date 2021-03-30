require 'rails_helper'
require "support/session_helper.rb"
require "support/database_cleaner.rb"

feature "Contact creation" do
  before(:all) do
    sign_up
  end
  
  scenario "allows acess to contacts page" do
    visit new_contact_path
    expect(page).to have_content 'Контакты'
  end
end