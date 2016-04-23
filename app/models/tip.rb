class Tip < ActiveRecord::Base
  belongs_to :category
  has_many :tip_images

def self.categories_with_tips
  Tip.all
end

end
