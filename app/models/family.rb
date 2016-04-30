class Family < ActiveRecord::Base
  has_many :zones, through: :zone_families
  has_many :zone_families
  has_many :family_images

  rails_admin do 
    edit do 
      exclude_fields :zone_families, :family_images
    end
  end
end
