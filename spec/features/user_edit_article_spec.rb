require 'rails_helper'
require "support/session_helper.rb"
require "support/database_cleaner.rb"

feature "Articles editor" do
  before(:each) do
    sign_up
  end

  scenario "allow to edit Article" do
    article = create(:article)
    visit "articles/#{article.id}/edit"

    fill_in :articles_title, with: "Заголовок_тест_Новый"
    fill_in :articles_body, with: "Текс статьи_тест_Новый"
    click_button 'Добавить'

    expect(page).to have_content 'Список всех постов'
  end
end