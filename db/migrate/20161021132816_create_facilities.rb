class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :district
      t.string :state
      t.float :longitude
      t.float :latitude
      t.string :telephone
      t.string :fax
      t.string :website

      t.timestamps null: false
    end
  end
end
