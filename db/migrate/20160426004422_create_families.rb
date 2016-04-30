class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.text :description
      t.string :banner
      t.string :name
      
      t.timestamps null: false
    end
  end
end
