#**
# frozen_string_literal: true
#Module
#*

FactoryBot.define do
  factory :user do
      name { 'John Doe' }
      email { 'name@example.com' }
      password { 'foobar' }
      password_confirmation { 'foobar' }
  end
end
