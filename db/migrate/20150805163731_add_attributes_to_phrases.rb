class AddAttributesToPhrases < ActiveRecord::Migration
  def change
  	add_column :phrases, :user_id, :integer
  	add_column :phrases, :words, :string
  end
end
