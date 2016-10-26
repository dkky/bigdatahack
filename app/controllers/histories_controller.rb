class HistoriesController < ApplicationController
	def new
		@history = History.new
	end

	def create
		@history = current_user.histories.new(histories_params)
		if @history.save 
			redirect_to user_path(current_user)
		else
			render :new
		end
	end

	private

	def histories_params
		params.require(:history).permit(:blood_sugar, :cholesterol_level, :diastolic_blood_pressure, :systolic_blsood_pressure)
	end
end
