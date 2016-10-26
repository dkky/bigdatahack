class ProfilesController < ApplicationController
	def new
		@profile = Profile.new
	end

	def create
		@profile = current_user.profiles.new(profiles_params)
		if @profile.save 
			redirect_to user_path(current_user)
		else
			render :new
		end
	end

	private

	def profiles_params
		params.require(:profile).permit(:facilities_visited, :gender, :height, :weight, :blood_type)
	end
end
