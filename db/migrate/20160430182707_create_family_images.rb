class CreateFamilyImages < ActiveRecord::Migration
  def change
    create_table :family_images do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
