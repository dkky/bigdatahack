class Addtypetofacilities < ActiveRecord::Migration
  def change
  	    add_column :facilities, :facility_type, :string
  end
end
