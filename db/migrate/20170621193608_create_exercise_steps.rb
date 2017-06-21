class CreateExerciseSteps < ActiveRecord::Migration
  def change
    create_table :exercise_steps do |t|
      t.integer :exercise_id
      t.integer :step_id

      t.timestamps null: false
    end
    add_index :exercise_steps, :exercise_id
    add_index :exercise_steps, :step_id
  end
end
