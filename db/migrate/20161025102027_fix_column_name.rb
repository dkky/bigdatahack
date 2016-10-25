class FixColumnName < ActiveRecord::Migration
  def change
  	  rename_column :histories, :systolic_blsood_pressure, :systolic_blood_pressure
  end
end
