FactoryBot.define do
  factory :purchase do
    total_amount      { Faker::Number.between(1, 10) }
    total_price       { Faker::Number.decimal(2) }
    user              { build(:user) }
  end
end
