class ZoneFamily < ActiveRecord::Base
  belongs_to :family , dependent: :destroy
  belongs_to :zone, dependent: :destroy
end
