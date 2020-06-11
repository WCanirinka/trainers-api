class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :gym_instructors, :instructorName, :gymName
    remove_column :gym_classes, :instructor
    remove_column :gym_classes, :user
    rename_column :gym_classes, :users_id, :user_id
    rename_column :gym_classes, :gym_instructors_id, :gym_instructor_id
  end
end
