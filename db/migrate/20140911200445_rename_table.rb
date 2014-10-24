class RenameTable < ActiveRecord::Migration
  def change
    rename_table :about, :abouts
  end
end
