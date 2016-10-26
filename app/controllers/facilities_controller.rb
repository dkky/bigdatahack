class FacilitiesController < ApplicationController

	def index
		@facilities = Facility.all
	end

	def show
		@review = Review.new
		@facility = Facility.find(params[:id])
		@hash = Gmaps4rails.build_markers(@facility) do |facility, marker|
	        marker.lat facility.latitude
	        marker.lng facility.longitude
	        marker.json({:id => facility.id })
	        marker.infowindow facility.name
	    end
	end
end
