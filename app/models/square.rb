class Square < ActiveRecord::Base
	belongs_to(:game)
	# spots = Square.all
	# render(:json => {:matches => matches.to_json({:include => :winner}), :win_percentage => percentage.to_json})
end
