class Zone < ActiveRecord::Base
  has_many :families, through: :zone_families
  has_many :zone_families

  validates :banner,:url => true, presence: true
  validates :name, presence: true
  validates :position, presence: true

 def self.get_famlies(position)
  puts "POSITION"::  + position.inspect
  zone = where("position=?",position)
  zone.map {|z| z.families}
 end


  rails_admin do
    edit do
      fields :name, :banner, :position, :description
      exclude_fields :families, :zone_families
      field :description, :ck_editor
    end
  end
end
