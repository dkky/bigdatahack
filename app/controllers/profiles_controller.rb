class ProfilesController < ApplicationController
	def new
		@profile = Profile.new
	end

	def create
		@profile = current_user.new(profiles_params)
	end

	private

	def profiles_params
		params.require(:profile).permit(:facilities_visited, :gender, :height, :weight, :blood_type)
	end
end
