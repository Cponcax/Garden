class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :banner_image_url

      t.timestamps null: false
    end
  end
end
