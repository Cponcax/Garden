class Category < ActiveRecord::Base
 has_many :tips, dependent: :destroy

 validates :name, presence: true
 validates :banner_image_url, presence: true

 rails_admin do
 
  edit do
  exclude_fields :tips
  end
 end

end
