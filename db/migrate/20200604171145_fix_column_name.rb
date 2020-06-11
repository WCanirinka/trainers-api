class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :gym_instructors, :instructorName, :gymName
  end
end
