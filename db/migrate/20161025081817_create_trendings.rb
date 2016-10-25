class CreateTrendings < ActiveRecord::Migration
  def change
    create_table :trendings do |t|
      t.string :headline
      t.string :details 
      t.float :latitude
      t.float :longitude
      t.timestamps null: false
    end
  end
end
