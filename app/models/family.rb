class Family < ActiveRecord::Base
  has_many :zones, through: :zone_families
  has_many :zone_families
  has_many :family_images

  validates :description, presence: true
  validates :banner, presence: true
  validates :name, presence: true

  rails_admin do
    edit do
      fields :name, :banner, :description, :zones
      exclude_fields :zone_families, :family_images
      field :description, :ck_editor

    end
  end
end
