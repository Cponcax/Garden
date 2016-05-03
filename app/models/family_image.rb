class FamilyImage < ActiveRecord::Base
  belongs_to :family
  
  validates :name, presence: true
  validates :url, presence: true

end
