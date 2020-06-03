class AddReferenceToTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :gym_classes, :gym_instructors, foreign_key: true
    add_reference :gym_classes, :users, foreign_key: true
  end
end
