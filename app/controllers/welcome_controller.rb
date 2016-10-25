class WelcomeController < ApplicationController
  def index
  	
  	@facilities = Facility.all
  	@hash = Gmaps4rails.build_markers(@facilities) do |facility, marker|
	  marker.lat facility.latitude
	  marker.lng facility.longitude
	  marker.json({:id => facility.id })
	  marker.infowindow facility.name
	end
  end
end
