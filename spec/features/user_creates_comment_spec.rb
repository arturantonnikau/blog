require 'rails_helper'
require "support/session_helper.rb"
require "support/database_cleaner.rb"

feature "Comments creation" do
  before(:each) do
    sign_up
  end

  scenario "allow to create Comment" do
    article = create(:article)

    visit "/articles/#{article.id}"

    fill_in :comment_body, with: "Новый Комментарий"
    click_button 'Оставить Комментарий'

    expect(page).not_to have_content 'Try Commit Comment Again'
  end
end
