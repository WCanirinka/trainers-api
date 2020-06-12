#**
# frozen_string_literal: true
#Module
#*

class GymClass < ApplicationRecord
  belongs_to :gym_instructor
  belongs_to :user

  validates_presence_of :classTime
end
