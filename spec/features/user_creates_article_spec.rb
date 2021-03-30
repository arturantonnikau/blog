require 'rails_helper'
require "support/session_helper.rb"
require "support/database_cleaner.rb"

feature "Articles creation" do
  before(:each) do
    sign_up
  end

  scenario "allow to create Article" do
    visit new_article_path

    fill_in :articles_title, with: "Заголовок_тест"
    fill_in :articles_body, with: "Текс статьи_тест"
    click_button 'Добавить'

    expect(page).to have_content 'Список всех постов'
  end
end

