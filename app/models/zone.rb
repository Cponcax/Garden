class Zone < ActiveRecord::Base
  has_many :families, through: :zone_families
  has_many :zone_families

  validates :banner, presence: true
  validates :name, presence: true
  validates :position, presence: true

 def self.get_famlies(position)
  puts "POSITION"::  + position.inspect
  zone = where("position=?",position)
  zone.map {|z| z.families}
 end


  rails_admin do
    edit do
      exclude_fields :families, :zone_families
    end
  end
end
