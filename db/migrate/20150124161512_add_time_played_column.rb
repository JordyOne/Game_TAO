class AddTimePlayedColumn < ActiveRecord::Migration
  def change
    add_column :games, :time_played, :datetime
  end
end
