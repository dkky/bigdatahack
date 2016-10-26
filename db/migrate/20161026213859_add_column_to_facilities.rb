class AddColumnToFacilities < ActiveRecord::Migration
  def change
  	add_column :facilities, :bed_no, :integer
  end
end
