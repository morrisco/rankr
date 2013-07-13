class OutcomesController < ApplicationController
	def new
		@outcome = Outcome.new
	end

	def create
		@outcome = Outcome.new(outcome_params)

		if @outcome.save
			redirect_to @outcome
		else
			render 'new'
		end
	end

	def show
		@outcome = Outcome.find(params[:id])
	end

	def index
		@outcomes = Outcome.all
	end

	def edit
		@outcome = Outcome.find(params[:id])
	end

	def update
		@outcome = Outcome.find(parmas[:id])
		
		if @outcome.update(outcome_params)
			redirect_to @outcome
		else
			render 'edit'
		end
	end

	private
		def outcome_params
			params.require(:outcome).permit(:winner, :loser)
		end
end
