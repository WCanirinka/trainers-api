# frozen_string_literal: true

class CreateGymClasses < ActiveRecord::Migration[6.0] # :nodoc:
  def change
    create_table :gym_classes do |t|
      t.datetime :classTime
      t.string :instructor, null: false, foreign_key: true
      t.string :status
      t.integer :user, foreign_key: true

      t.timestamps
    end
  end
end
