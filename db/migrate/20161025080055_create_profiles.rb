class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :gender
      t.integer :height
      t.integer :weight
      t.string :blood_type
      t.string :facilities_visited
      t.timestamps null: false
    end
  end
end
