class TrendingsController < ApplicationController
	def new
		@trending = Trending.new
	end

	def create
		@trending = Trending.new(trendings_params)
		if @trending.save 
			redirect_to trendings_path
		else
			render :new
		end
	end

	def index
	  @trending = Trending.all
	  @hash = Gmaps4rails.build_markers(@trending) do |trend, marker|
        marker.lat trend.latitude
        marker.lng trend.longitude
        marker.json({:id => trend.id })
        marker.infowindow trend.headline
        marker.picture({
                  :url    => view_context.image_path("#{trend.id}.png"),
                  :width  => "32",
                  :height => "32"
        })
      end
	end

	private

	def trendings_params
		params.require(:trending).permit(:headline, :details, :latitude, :longitude, :stats, :time)
	end
end
