class ZoneSerializer < ActiveModel::Serializer
  attributes :id, :name, :banner
  has_many :families
end
