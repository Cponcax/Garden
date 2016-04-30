class CreateZoneFamilies < ActiveRecord::Migration
  def change
    create_table :zone_families do |t|

      t.timestamps null: false
    end
  end
end
