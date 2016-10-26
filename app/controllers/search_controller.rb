class SearchController < ApplicationController
  def index
     if params[:query].present?
     @facility = Facility.search(params[:query]).with_pg_search_highlight
     @count = @facility.pluck(:id).count
     @hash = Gmaps4rails.build_markers(@facility) do |facility, marker|
        marker.lat facility.latitude
        marker.lng facility.longitude
        marker.json({:id => facility.id })
        marker.infowindow facility.name
      end
   else
     @facility = Facility.all
   end
  end
end
