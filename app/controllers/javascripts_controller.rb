class JavascriptsController < ApplicationController
  
  def show
    @states = CompanyContact.find(:all)
    respond_to do |format|
          format.js
        end

    
  end
  
end
