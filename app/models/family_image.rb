class FamilyImage < ActiveRecord::Base
  belongs_to :family
  
  validates :name, presence: true
  validates :url, :url => true, presence: true

end
