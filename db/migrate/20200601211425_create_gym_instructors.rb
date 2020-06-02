# frozen_string_literal: true

class CreateGymInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :gym_instructors do |t|
      t.string :name
      t.string :trainingType
      t.string :instructorName
      t.string :instImage
      t.string :gymImage

      t.timestamps
    end
  end
end
