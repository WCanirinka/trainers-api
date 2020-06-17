FactoryBot.define do
  factory :gym_class do
    user_id { 1 }
    gym_instructor { 1 }
    classTime { '2020-06-06' }
    status { false }
  end
end
