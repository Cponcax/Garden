class TipImage < ActiveRecord::Base
  belongs_to :tip

  validates :description, presence: true
  validates :name, presence: true
  validates :url,:url => true, presence: true

end
