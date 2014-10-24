class AddInfoToGamesTable < ActiveRecord::Migration
  def change
    add_column :games, :info, :string
  end
end
