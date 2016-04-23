class CreateTipImages < ActiveRecord::Migration
  def change
    create_table :tip_images do |t|
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end
