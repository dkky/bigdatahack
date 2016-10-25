class Review < ActiveRecord::Base
	ratyrate_rateable "score"
    include RatingForHelper

	belongs_to :user
	belongs_to :facility
end
