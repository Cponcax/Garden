class AddPositionToZones < ActiveRecord::Migration
  def change
  	add_column :zones, :position, :integer
  end
end
