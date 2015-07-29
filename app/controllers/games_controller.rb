class GamesController < ApplicationController
	def index
		@game = Game.all
		render "index"

		@firstgame = Game.first
	end
	def join_game
		render "join_game"
	end
	def create_game
		# I dont't remember what this method was supposed to be for
	end

	def update

		

		# @prj = Project.find(params[:project_id])
		# @entr = @prj.entries.find(params[:id]) 
		# if @entr.save
		# 	@entr.update_attributes(entry_params)
		# 	redirect_to(project_entries_path)
		# else
		# 	@errors = @entr.errors.full_messages
		# 	render ("edit")
		# end
	end
end
