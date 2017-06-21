class CreateStepCommands < ActiveRecord::Migration
  def change
    create_table :step_commands do |t|
      t.integer :step_id
      t.integer :command_id

      t.timestamps null: false
    end
    add_index :step_commands, :step_id
    add_index :step_commands, :command_id
  end
end
