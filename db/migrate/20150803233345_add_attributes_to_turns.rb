class AddAttributesToTurns < ActiveRecord::Migration
  def change
  	add_column :turns, :user_id, :integer
  	add_column :turns, :game_id, :integer
  	add_column :turns, :color, :string
  end
end
