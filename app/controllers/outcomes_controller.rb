class OutcomesController < ApplicationController
	def new
	end

	def create
		@outcome = Outcome.new(outcome_params)

		@outcome.save
		redirect_to @outcome
	end

	def show
		@outcome = Outcome.find(params[:id])
	end

	def index
		@outcomes = Outcome.all
	end

	private
		def outcome_params
			params.require(:outcome).permit(:winner, :loser)
		end
end
