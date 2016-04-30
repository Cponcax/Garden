class AddFamilyRefToZoneFamilies < ActiveRecord::Migration
  def change
    add_reference :zone_families, :family, index: true, foreign_key: true

  end
end
