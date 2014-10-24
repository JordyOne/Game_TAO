class AddFactsTable < ActiveRecord::Migration
  def change
    create_table :facts do |column|
      column.belongs_to :games
      column.string :fact
    end

  end
end
