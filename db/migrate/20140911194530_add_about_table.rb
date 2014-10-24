class AddAboutTable < ActiveRecord::Migration
  def change
    create_table :about do |column|
      column.belongs_to :games
      column.string :info
    end
  end
end
