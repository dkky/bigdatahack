class AddColumnsToHistories < ActiveRecord::Migration
  def change
  	 add_column :histories, :pulse_rate, :float
  	 add_column :histories, :blood_sugar_after_meal, :float
     rename_column :histories, :blood_sugar, :blood_sugar_fasting
  end
end
