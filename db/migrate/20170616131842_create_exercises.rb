class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.text :objective
      t.text :instructions
      t.float :difficulty

      t.timestamps null: false
    end
  end
end
