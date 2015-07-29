class AddMoveCountAttributeToGames < ActiveRecord::Migration
  def change
  	add_column :games, :move_number, :integer
  end
end
