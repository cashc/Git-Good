class AddNumberToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :number, :int
  end
end
