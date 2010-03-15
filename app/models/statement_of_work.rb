class StatementOfWork < ActiveRecord::Base
  
  belongs_to :company
  belongs_to :company_contact
  belongs_to :engine_yard_contact
  
end
