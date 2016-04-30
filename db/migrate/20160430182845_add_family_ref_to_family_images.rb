class AddFamilyRefToFamilyImages < ActiveRecord::Migration
  def change
    add_reference :family_images, :family, index: true, foreign_key: true
  end
end
