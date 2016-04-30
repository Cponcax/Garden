class Zone < ActiveRecord::Base
  has_many :families, through: :zone_families
  has_many :zone_families
end
