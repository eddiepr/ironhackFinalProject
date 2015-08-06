class AddAttributesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :winning_turns, :integer
  	add_column :users, :losing_turns, :integer
  end
end
