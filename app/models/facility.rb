class Facility < ActiveRecord::Base
	has_many :appointments
	has_many :reviews

  include PgSearch
  pg_search_scope :search, against: [:name, :street, :state]


  geocoded_by :address
  after_validation :geocode

  def address
	[street, district, state].compact.join(', ')
  end
end
