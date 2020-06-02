# frozen_string_literal: true

class GymClass < ApplicationRecord
  belongs_to :instructor
  belongs_to :user

  validates_presence_of :classTime
end
