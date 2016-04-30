class Category < ActiveRecord::Base
 has_many :tips 

 rails_admin do 
  edit do 
  exclude_fields :tips
  end 
 end

end
