class FamilySerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :family_images
end
