class GymClass < ApplicationRecord # :nodoc:
  belongs_to :gym_instructor
  belongs_to :user

  validates_presence_of :classTime
end
