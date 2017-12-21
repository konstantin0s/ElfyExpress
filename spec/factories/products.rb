FactoryBot.define do
  factory :product do
    name             { Faker::Lorem.words(3).join(' ') }
    description      { Faker::Lorem.sentence(40) }
    image_url        { Faker::Internet.url }
    price
  end
end
