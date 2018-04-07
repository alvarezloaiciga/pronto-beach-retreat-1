FactoryBot.define do
  factory :product do
    name { Faker::Lorem.word }
    price 100
  end
end
