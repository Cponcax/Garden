class AddNameToTipImages < ActiveRecord::Migration
  def change
  	add_column :tip_images, :name, :string
  end
end
