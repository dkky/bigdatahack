class Addstatstotrendings < ActiveRecord::Migration
  def change
  	   add_column :trendings, :stats, :integer
  end
end
