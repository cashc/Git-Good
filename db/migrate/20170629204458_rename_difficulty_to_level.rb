class RenameDifficultyToLevel < ActiveRecord::Migration
  def change
    rename_column :exercises, :difficulty, :level
  end
end
