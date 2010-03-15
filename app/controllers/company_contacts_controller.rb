class CompanyContactsController < ApplicationController
  
  layout 'statement_of_works'
  # GET /company_contacts
  # GET /company_contacts.xml
  def index
    @company_contacts = CompanyContact.all

  end

  # GET /company_contacts/1
  # GET /company_contacts/1.xml
  def show
    @company_contact = CompanyContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @company_contact }
    end
  end

  # GET /company_contacts/new
  # GET /company_contacts/new.xml
  def new 
    @company_contact = CompanyContact.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @company_contact }
    end
  end

  # GET /company_contacts/1/edit
  def edit
    @company_contact = CompanyContact.find(params[:id])
  end

  # POST /company_contacts
  # POST /company_contacts.xml
  def create
    @company_contact = CompanyContact.new(params[:company_contact])
    @company_contact.company_id = (params[:company_id])


    respond_to do |format|
      if @company_contact.save
        flash[:notice] = 'CompanyContact was successfully created.'
        format.html { redirect_to('/companies/'+ @company_contact.company_id.to_s) }
        format.xml  { render :xml => @company_contact, :status => :created, :location => @company_contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @company_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /company_contacts/1
  # PUT /company_contacts/1.xml
  def update
    @company_contact = CompanyContact.find(params[:id])    

    respond_to do |format|
      if @company_contact.update_attributes(params[:company_contact])
        format.html { redirect_to('/companies/'+ @company_contact.company_id.to_s ) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @company_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /company_contacts/1
  # DELETE /company_contacts/1.xml
  def destroy
    @company_contact = CompanyContact.find(params[:id])
    k = @company_contact.company_id
    @company_contact.destroy

    respond_to do |format|
      format.html { redirect_to('/companies/'+ k.to_s) }
      format.xml  { head :ok }
    end
  end
end
