class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :score
      t.text :comment
      t.string :facility_name
      t.string :doctor_name
      t.timestamps null: false
    end
  end
end
