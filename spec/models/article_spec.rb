require 'rails_helper'

RSpec.describe Article do
  describe "validations" do
    it { should validate_length_of(:title).is_at_most(140) }
    it { should validate_length_of(:body).is_at_most(4000) }
  end
end

RSpec.describe Article do
  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: "Foo Bar")

      expect(article.subject).to eq("Foo Bar")
    end
  end
end