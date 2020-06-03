FactoryBot.define do
    factory :instructor do
        name { 'name@example.com' }
        email { '' }
        password { 'foobar' }
        password_confirmation { 'foobar' }
    end
end