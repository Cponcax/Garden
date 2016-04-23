class AddTipRefToTipImages < ActiveRecord::Migration
  def change
  	add_reference :tip_images, :tip, index: true, foreign_key: true
  end
end
