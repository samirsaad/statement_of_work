class Company < ActiveRecord::Base
  
  has_many :stament_of_works
  has_many :company_contacts
  

end
