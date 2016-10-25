class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.float :blood_sugar
      t.float :cholesterol_level
      t.float :diastolic_blood_pressure
      t.float :systolic_blsood_pressure
      t.timestamps null: false
    end
  end
end
