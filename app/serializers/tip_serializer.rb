class TipSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :tip_images
end
