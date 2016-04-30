class AddZoneRefToZoneFamilies < ActiveRecord::Migration
  def change
  	add_reference :zone_families, :zone, index: true, foreign_key: true
  end
end
