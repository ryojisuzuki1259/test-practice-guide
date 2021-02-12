FactoryBot.define do
  factory :administrator do
    sequence(:email) { |n| "member#{n}@example.com" }
    password { "pw2" }
    suspended { false }
  end
end