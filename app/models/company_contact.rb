class CompanyContact < ActiveRecord::Base
  
  belongs_to :company
  has_many :statement_of_works
  
  
end
