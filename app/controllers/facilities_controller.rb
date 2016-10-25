class FacilitiesController < ApplicationController
	def show
		@review = Review.new
		@facility = Facility.find(params[:id])
		@user = User.find(params[:id])
	end
end
