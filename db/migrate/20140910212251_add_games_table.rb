class AddGamesTable < ActiveRecord::Migration
  def change
    create_table :games do |column|
      column.string :name
    end
  end
end
