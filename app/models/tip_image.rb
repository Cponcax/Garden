class TipImage < ActiveRecord::Base
  belongs_to :tip

  validates :name, presence: true
  validates :url, presence: true


  rails_admin do
    edit do
      fields :name, :url, :tip, :description
    end
  end
end
