class Family < ActiveRecord::Base
  has_many :zones, through: :zone_families
  has_many :zone_families
end
