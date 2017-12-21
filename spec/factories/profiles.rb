FactoryBot.define do
  factory :profile do
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
    street      { Faker::Address.street_name }
    postal_code { Faker::Number.number(6)}
    city        { Faker::Address.city}
    user        { build(:user) }
  end
end
