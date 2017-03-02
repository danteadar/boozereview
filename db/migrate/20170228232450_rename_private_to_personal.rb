class RenamePrivateToPersonal < ActiveRecord::Migration[5.0]
  def change
    rename_column :reviews, :private, :personal
  end
end
