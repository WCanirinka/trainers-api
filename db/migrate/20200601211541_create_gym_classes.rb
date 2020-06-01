class CreateGymClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :gym_classes do |t|
      t.string :classTime
      t.integer :instructor_id
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
