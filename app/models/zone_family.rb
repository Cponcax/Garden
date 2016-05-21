class ZoneFamily < ActiveRecord::Base
  belongs_to :family 
  belongs_to :zone
end
