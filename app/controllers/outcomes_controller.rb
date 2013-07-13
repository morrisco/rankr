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
		@outcome = Outcome.find(params[:id])
		
		if @outcome.update(params[:outcome].permit(:winner, :loser))
			redirect_to @outcome
		else
			render 'edit'
		end
	end

	def destroy
		@outcome = Outcome.find(params[:id])
		@outcome.destroy
		redirect_to outcomes_path
end

	private
		def outcome_params
			params.require(:outcome).permit(:winner, :loser)
		end
end
