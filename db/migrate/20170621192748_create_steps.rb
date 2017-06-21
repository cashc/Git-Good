class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :instruction
      t.string :answer
      t.string :correct_response
      t.string :error_response

      t.timestamps null: false
    end
  end
end
