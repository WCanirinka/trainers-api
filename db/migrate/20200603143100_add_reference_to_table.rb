# frozen_string_literal: true

class AddReferenceToTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :gym_classes, :gym_instructor, foreign_key: true
    add_reference :gym_classes, :user, foreign_key: true
  end
end
