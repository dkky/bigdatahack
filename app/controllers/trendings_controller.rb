class TrendingsController < ApplicationController
	def index
	  @trending = Trending.all
	  @hash = Gmaps4rails.build_markers(@trending) do |trend, marker|
        marker.lat trend.latitude
        marker.lng trend.longitude
        marker.json({:id => trend.id })
        marker.infowindow trend.headline
      end
	end
end
