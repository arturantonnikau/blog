FactoryBot.define do
  factory :article do
    title { "Article title" }
    body { "Article body" }
    user_id { 1 }
  end
end