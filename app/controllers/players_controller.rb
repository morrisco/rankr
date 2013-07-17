class PlayersController < ApplicationController

	def new
	end

	def create
		@player = Player.new(player_params)

		@player.save
		redirect_to @player
	end

	def show
		@player = Player.find(params[:id])
	end

	private
		def player_params
			params.require(:player).permit(:first_name, :last_name, :email)
		end
end
