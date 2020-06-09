# frozen_string_literal: true

FactoryBot.define do
  factory :instructor do
      name { 'John Doe' }
      email { 'name@example.com' }
      password { 'foobar' }
      password_confirmation { 'foobar' }
  end
end
