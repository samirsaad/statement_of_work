class MonitorsController < ApplicationController
  
  
  def index
    @states = CompanyContact.find(:all)
    respond_to do |format|
          format.js
        end
  end
  
    def show
    @states = CompanyContact.find(:all)
    respond_to do |format|
          format.js
        end
  end

  
end
