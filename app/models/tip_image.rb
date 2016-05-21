class TipImage < ActiveRecord::Base
  belongs_to :tip

  validates :name, presence: true
  validates :url,:url => true, presence: true


  rails_admin do
    edit do
      fields :name, :url, :tip, :description
    end
  end
end
