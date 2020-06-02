# frozen_string_literal: true

class GymInstructor < ApplicationRecord
  has_many :gym_classes, dependent: :destroy

  validates_presence_of :name, :trainingType, :gymName, :instImage, :gymName
end
