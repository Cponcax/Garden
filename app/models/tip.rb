class Tip < ActiveRecord::Base
  belongs_to :category
  has_many :tip_images

  validates :description, presence: true
  validates :name, presence: true
  validates :category, presence: true

  def self.categories_with_tips
    Tip.all
  end

  rails_admin do
  	edit do
  	exclude_fields :tip_images
    field :description, :ck_editor
  	end
  end


end
