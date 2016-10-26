class Addtimetotrendings < ActiveRecord::Migration
  def change
  	  add_column :trendings, :time, :string
  end
end
