class AddSourceColumnToGames < ActiveRecord::Migration
  def change
    add_column :games, :source, :string
  end
end
