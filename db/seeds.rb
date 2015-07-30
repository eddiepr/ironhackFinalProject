# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Square.create(:game_id => 1, :x => 1, :y => 1, :contents => "br")
Square.create(:game_id => 1, :x => 2, :y => 1, :contents => "bn")
Square.create(:game_id => 1, :x => 3, :y => 1, :contents => "bb")
Square.create(:game_id => 1, :x => 4, :y => 1, :contents => "bq")
Square.create(:game_id => 1, :x => 5, :y => 1, :contents => "bk")
Square.create(:game_id => 1, :x => 6, :y => 1, :contents => "bb")
Square.create(:game_id => 1, :x => 7, :y => 1, :contents => "bk")
Square.create(:game_id => 1, :x => 8, :y => 1, :contents => "br")

Square.create(:game_id => 1, :x => 1, :y => 2, :contents => "bp")
Square.create(:game_id => 1, :x => 2, :y => 2, :contents => "bp")
Square.create(:game_id => 1, :x => 3, :y => 2, :contents => "bp")
Square.create(:game_id => 1, :x => 4, :y => 2, :contents => "bp")
Square.create(:game_id => 1, :x => 5, :y => 2, :contents => "bp")
Square.create(:game_id => 1, :x => 6, :y => 2, :contents => "bp")
Square.create(:game_id => 1, :x => 7, :y => 2, :contents => "bp")
Square.create(:game_id => 1, :x => 8, :y => 2, :contents => "bp")

Square.create(:game_id => 1, :x => 1, :y => 3, :contents => "nil")
Square.create(:game_id => 1, :x => 2, :y => 3, :contents => "nil")
Square.create(:game_id => 1, :x => 3, :y => 3, :contents => "nil")
Square.create(:game_id => 1, :x => 4, :y => 3, :contents => "nil")
Square.create(:game_id => 1, :x => 5, :y => 3, :contents => "bb")
Square.create(:game_id => 1, :x => 6, :y => 3, :contents => "rook")
Square.create(:game_id => 1, :x => 7, :y => 3, :contents => "nil")
Square.create(:game_id => 1, :x => 8, :y => 3, :contents => "nil")

Square.create(:game_id => 1, :x => 1, :y => 4, :contents => "nil")
Square.create(:game_id => 1, :x => 2, :y => 4, :contents => "nil")
Square.create(:game_id => 1, :x => 3, :y => 4, :contents => "nil")
Square.create(:game_id => 1, :x => 4, :y => 4, :contents => "nil")
Square.create(:game_id => 1, :x => 5, :y => 4, :contents => "bq")
Square.create(:game_id => 1, :x => 6, :y => 4, :contents => "nil")
Square.create(:game_id => 1, :x => 7, :y => 4, :contents => "nil")
Square.create(:game_id => 1, :x => 8, :y => 4, :contents => "nil")

Square.create(:game_id => 1, :x => 1, :y => 5, :contents => "nil")
Square.create(:game_id => 1, :x => 2, :y => 5, :contents => "nil")
Square.create(:game_id => 1, :x => 3, :y => 5, :contents => "nil")
Square.create(:game_id => 1, :x => 4, :y => 5, :contents => "nil")
Square.create(:game_id => 1, :x => 5, :y => 5, :contents => "nil")
Square.create(:game_id => 1, :x => 6, :y => 5, :contents => "nil")
Square.create(:game_id => 1, :x => 7, :y => 5, :contents => "nil")
Square.create(:game_id => 1, :x => 8, :y => 5, :contents => "nil")

Square.create(:game_id => 1, :x => 1, :y => 6, :contents => "nil")
Square.create(:game_id => 1, :x => 2, :y => 6, :contents => "nil")
Square.create(:game_id => 1, :x => 3, :y => 6, :contents => "nil")
Square.create(:game_id => 1, :x => 4, :y => 6, :contents => "nil")
Square.create(:game_id => 1, :x => 5, :y => 6, :contents => "nil")
Square.create(:game_id => 1, :x => 6, :y => 6, :contents => "nil")
Square.create(:game_id => 1, :x => 7, :y => 6, :contents => "nil")
Square.create(:game_id => 1, :x => 8, :y => 6, :contents => "nil")

Square.create(:game_id => 1, :x => 1, :y => 7, :contents => "wp")
Square.create(:game_id => 1, :x => 2, :y => 7, :contents => "wp")
Square.create(:game_id => 1, :x => 3, :y => 7, :contents => "wp")
Square.create(:game_id => 1, :x => 4, :y => 7, :contents => "wp")
Square.create(:game_id => 1, :x => 5, :y => 7, :contents => "wp")
Square.create(:game_id => 1, :x => 6, :y => 7, :contents => "wp")
Square.create(:game_id => 1, :x => 7, :y => 7, :contents => "wp")
Square.create(:game_id => 1, :x => 8, :y => 7, :contents => "wp")

Square.create(:game_id => 1, :x => 1, :y => 8, :contents => "wr")
Square.create(:game_id => 1, :x => 2, :y => 8, :contents => "wn")
Square.create(:game_id => 1, :x => 3, :y => 8, :contents => "wb")
Square.create(:game_id => 1, :x => 4, :y => 8, :contents => "wq")
Square.create(:game_id => 1, :x => 5, :y => 8, :contents => "wk")
Square.create(:game_id => 1, :x => 6, :y => 8, :contents => "wb")
Square.create(:game_id => 1, :x => 7, :y => 8, :contents => "wn")
Square.create(:game_id => 1, :x => 8, :y => 8, :contents => "wr")




Game.create(:turn => "white", :finished => false, :winner => "none")
Game.create(:turn => "black", :finished => false, :winner => "none")
Game.create(:turn => "white", :finished => false, :winner => "none")
# Game.create(:turn => "white", :finished => false, :winner => "none")
# Game.create(:turn => "black", :finished => false, :winner => "none")


Square.create(:game_id => 2, :x => 1, :y => 1, :contents => "br")
Square.create(:game_id => 2, :x => 2, :y => 1, :contents => "bn")
Square.create(:game_id => 2, :x => 3, :y => 1, :contents => "nil")
Square.create(:game_id => 2, :x => 4, :y => 1, :contents => "bq")
Square.create(:game_id => 2, :x => 5, :y => 1, :contents => "bk")
Square.create(:game_id => 2, :x => 6, :y => 1, :contents => "bb")
Square.create(:game_id => 2, :x => 7, :y => 1, :contents => "nil")
Square.create(:game_id => 2, :x => 8, :y => 1, :contents => "br")

Square.create(:game_id => 2, :x => 1, :y => 2, :contents => "bp")
Square.create(:game_id => 2, :x => 2, :y => 2, :contents => "bp")
Square.create(:game_id => 2, :x => 3, :y => 2, :contents => "bp")
Square.create(:game_id => 2, :x => 4, :y => 2, :contents => "bp")
Square.create(:game_id => 2, :x => 5, :y => 2, :contents => "bp")
Square.create(:game_id => 2, :x => 6, :y => 2, :contents => "bp")
Square.create(:game_id => 2, :x => 7, :y => 2, :contents => "bp")
Square.create(:game_id => 2, :x => 8, :y => 2, :contents => "bp")

Square.create(:game_id => 2, :x => 1, :y => 3, :contents => "nil")
Square.create(:game_id => 2, :x => 2, :y => 3, :contents => "nil")
Square.create(:game_id => 2, :x => 3, :y => 3, :contents => "nil")
Square.create(:game_id => 2, :x => 4, :y => 3, :contents => "nil")
Square.create(:game_id => 2, :x => 5, :y => 3, :contents => "nil")
Square.create(:game_id => 2, :x => 6, :y => 3, :contents => "nil")
Square.create(:game_id => 2, :x => 7, :y => 3, :contents => "nil")
Square.create(:game_id => 2, :x => 8, :y => 3, :contents => "nil")

Square.create(:game_id => 2, :x => 1, :y => 4, :contents => "nil")
Square.create(:game_id => 2, :x => 2, :y => 4, :contents => "bb")
Square.create(:game_id => 2, :x => 3, :y => 4, :contents => "nil")
Square.create(:game_id => 2, :x => 4, :y => 4, :contents => "nil")
Square.create(:game_id => 2, :x => 5, :y => 4, :contents => "nil")
Square.create(:game_id => 2, :x => 6, :y => 4, :contents => "nil")
Square.create(:game_id => 2, :x => 7, :y => 4, :contents => "nil")
Square.create(:game_id => 2, :x => 8, :y => 4, :contents => "nil")

Square.create(:game_id => 2, :x => 1, :y => 5, :contents => "nil")
Square.create(:game_id => 2, :x => 2, :y => 5, :contents => "nil")
Square.create(:game_id => 2, :x => 3, :y => 5, :contents => "nil")
Square.create(:game_id => 2, :x => 4, :y => 5, :contents => "nil")
Square.create(:game_id => 2, :x => 5, :y => 5, :contents => "nil")
Square.create(:game_id => 2, :x => 6, :y => 5, :contents => "nil")
Square.create(:game_id => 2, :x => 7, :y => 5, :contents => "nil")
Square.create(:game_id => 2, :x => 8, :y => 5, :contents => "nil")

Square.create(:game_id => 2, :x => 1, :y => 6, :contents => "nil")
Square.create(:game_id => 2, :x => 2, :y => 6, :contents => "nil")
Square.create(:game_id => 2, :x => 3, :y => 6, :contents => "nil")
Square.create(:game_id => 2, :x => 4, :y => 6, :contents => "nil")
Square.create(:game_id => 2, :x => 5, :y => 6, :contents => "nil")
Square.create(:game_id => 2, :x => 6, :y => 6, :contents => "nil")
Square.create(:game_id => 2, :x => 7, :y => 6, :contents => "nil")
Square.create(:game_id => 2, :x => 8, :y => 6, :contents => "nil")

Square.create(:game_id => 2, :x => 1, :y => 7, :contents => "wp")
Square.create(:game_id => 2, :x => 2, :y => 7, :contents => "wp")
Square.create(:game_id => 2, :x => 3, :y => 7, :contents => "wp")
Square.create(:game_id => 2, :x => 4, :y => 7, :contents => "wp")
Square.create(:game_id => 2, :x => 5, :y => 7, :contents => "wp")
Square.create(:game_id => 2, :x => 6, :y => 7, :contents => "wp")
Square.create(:game_id => 2, :x => 7, :y => 7, :contents => "wp")
Square.create(:game_id => 2, :x => 8, :y => 7, :contents => "wp")

Square.create(:game_id => 2, :x => 1, :y => 8, :contents => "wr")
Square.create(:game_id => 2, :x => 2, :y => 8, :contents => "wn")
Square.create(:game_id => 2, :x => 3, :y => 8, :contents => "wb")
Square.create(:game_id => 2, :x => 4, :y => 8, :contents => "wq")
Square.create(:game_id => 2, :x => 5, :y => 8, :contents => "wk")
Square.create(:game_id => 2, :x => 6, :y => 8, :contents => "wb")
Square.create(:game_id => 2, :x => 7, :y => 8, :contents => "wn")
Square.create(:game_id => 2, :x => 8, :y => 8, :contents => "wr")








Square.create(:game_id => 3, :x => 1, :y => 1, :contents => "br")
Square.create(:game_id => 3, :x => 2, :y => 1, :contents => "bn")
Square.create(:game_id => 3, :x => 3, :y => 1, :contents => "nil")
Square.create(:game_id => 3, :x => 4, :y => 1, :contents => "bq")
Square.create(:game_id => 3, :x => 5, :y => 1, :contents => "bk")
Square.create(:game_id => 3, :x => 6, :y => 1, :contents => "bb")
Square.create(:game_id => 3, :x => 7, :y => 1, :contents => "nil")
Square.create(:game_id => 3, :x => 8, :y => 1, :contents => "br")

Square.create(:game_id => 3, :x => 1, :y => 2, :contents => "bp")
Square.create(:game_id => 3, :x => 2, :y => 2, :contents => "bp")
Square.create(:game_id => 3, :x => 3, :y => 2, :contents => "bp")
Square.create(:game_id => 3, :x => 4, :y => 2, :contents => "bp")
Square.create(:game_id => 3, :x => 5, :y => 2, :contents => "bp")
Square.create(:game_id => 3, :x => 6, :y => 2, :contents => "bp")
Square.create(:game_id => 3, :x => 7, :y => 2, :contents => "bp")
Square.create(:game_id => 3, :x => 8, :y => 2, :contents => "bp")

Square.create(:game_id => 3, :x => 1, :y => 3, :contents => "nil")
Square.create(:game_id => 3, :x => 2, :y => 3, :contents => "nil")
Square.create(:game_id => 3, :x => 3, :y => 3, :contents => "nil")
Square.create(:game_id => 3, :x => 4, :y => 3, :contents => "nil")
Square.create(:game_id => 3, :x => 5, :y => 3, :contents => "nil")
Square.create(:game_id => 3, :x => 6, :y => 3, :contents => "nil")
Square.create(:game_id => 3, :x => 7, :y => 3, :contents => "nil")
Square.create(:game_id => 3, :x => 8, :y => 3, :contents => "nil")

Square.create(:game_id => 3, :x => 1, :y => 4, :contents => "nil")
Square.create(:game_id => 3, :x => 2, :y => 4, :contents => "bb")
Square.create(:game_id => 3, :x => 3, :y => 4, :contents => "nil")
Square.create(:game_id => 3, :x => 4, :y => 4, :contents => "nil")
Square.create(:game_id => 3, :x => 5, :y => 4, :contents => "nil")
Square.create(:game_id => 3, :x => 6, :y => 4, :contents => "nil")
Square.create(:game_id => 3, :x => 7, :y => 4, :contents => "nil")
Square.create(:game_id => 3, :x => 8, :y => 4, :contents => "nil")

Square.create(:game_id => 3, :x => 1, :y => 5, :contents => "nil")
Square.create(:game_id => 3, :x => 2, :y => 5, :contents => "nil")
Square.create(:game_id => 3, :x => 3, :y => 5, :contents => "nil")
Square.create(:game_id => 3, :x => 4, :y => 5, :contents => "nil")
Square.create(:game_id => 3, :x => 5, :y => 5, :contents => "nil")
Square.create(:game_id => 3, :x => 6, :y => 5, :contents => "nil")
Square.create(:game_id => 3, :x => 7, :y => 5, :contents => "nil")
Square.create(:game_id => 3, :x => 8, :y => 5, :contents => "nil")

Square.create(:game_id => 3, :x => 1, :y => 6, :contents => "nil")
Square.create(:game_id => 3, :x => 2, :y => 6, :contents => "nil")
Square.create(:game_id => 3, :x => 3, :y => 6, :contents => "nil")
Square.create(:game_id => 3, :x => 4, :y => 6, :contents => "nil")
Square.create(:game_id => 3, :x => 5, :y => 6, :contents => "nil")
Square.create(:game_id => 3, :x => 6, :y => 6, :contents => "nil")
Square.create(:game_id => 3, :x => 7, :y => 6, :contents => "nil")
Square.create(:game_id => 3, :x => 8, :y => 6, :contents => "nil")

Square.create(:game_id => 3, :x => 1, :y => 7, :contents => "wp")
Square.create(:game_id => 3, :x => 2, :y => 7, :contents => "wp")
Square.create(:game_id => 3, :x => 3, :y => 7, :contents => "wp")
Square.create(:game_id => 3, :x => 4, :y => 7, :contents => "wp")
Square.create(:game_id => 3, :x => 5, :y => 7, :contents => "wp")
Square.create(:game_id => 3, :x => 6, :y => 7, :contents => "wp")
Square.create(:game_id => 3, :x => 7, :y => 7, :contents => "wp")
Square.create(:game_id => 3, :x => 8, :y => 7, :contents => "wp")

Square.create(:game_id => 3, :x => 1, :y => 8, :contents => "wr")
Square.create(:game_id => 3, :x => 2, :y => 8, :contents => "wk")
Square.create(:game_id => 3, :x => 3, :y => 8, :contents => "wb")
Square.create(:game_id => 3, :x => 4, :y => 8, :contents => "wq")
Square.create(:game_id => 3, :x => 5, :y => 8, :contents => "wk")
Square.create(:game_id => 3, :x => 6, :y => 8, :contents => "wb")
Square.create(:game_id => 3, :x => 7, :y => 8, :contents => "wk")
Square.create(:game_id => 3, :x => 8, :y => 8, :contents => "wr")








