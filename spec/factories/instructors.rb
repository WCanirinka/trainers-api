# **
# frozen_string_literal: true

# Module
# *

FactoryBot.define do
  factory :gym_instructor do
    name { 'James' }
    instImage do
      'https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym-instructor.jpg'
    end
    gymName { 'Chest Gym' }
    trainingType { 'Chest' }
    gymImage do
      'https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym.jpg'
    end
  end
end
