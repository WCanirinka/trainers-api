# frozen_string_literal: true

class FixColumnName < ActiveRecord::Migration[6.0] # :nodoc:
  def change
    rename_column :gym_instructors, :instructorName, :gymName
    remove_column :gym_classes, :instructor
    remove_column :gym_classes, :user
  end
end
