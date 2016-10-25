class HistoriesController < ApplicationController
	def new
		@history = History.new
	end

	def create
		@history = current_user.new(histories_params)
	end

	private

	def histories_params
		params.require(:profile).permit(:blood_sugar, :cholesterol_level, :diastolic_blood_pressure, :systolic_blsood_pressure)
	end
end
