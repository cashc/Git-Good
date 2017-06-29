class RenameUrlToArgument < ActiveRecord::Migration
  def change
    rename_column :commands, :url, :argument
    add_column :commands, :color, :string
  end
end
