FactoryBot.define do
  factory :comment do
    name { "Chuck Norris" }
    email { "google@com" }

    sequence(:body) { |n| "Sample Text" }
  end
end