class EngineYardContactsController < ApplicationController

  layout 'statement_of_works'
  # GET /engine_yard_contacts
  # GET /engine_yard_contacts.xml
  def index
    @engine_yard_contacts = EngineYardContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @engine_yard_contacts }
    end
  end

  # GET /engine_yard_contacts/1
  # GET /engine_yard_contacts/1.xml
  def show
    @engine_yard_contact = EngineYardContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @engine_yard_contact }
    end
  end

  # GET /engine_yard_contacts/new
  # GET /engine_yard_contacts/new.xml
  def new
    @engine_yard_contact = EngineYardContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @engine_yard_contact }
    end
  end

  # GET /engine_yard_contacts/1/edit
  def edit
    @engine_yard_contact = EngineYardContact.find(params[:id])
  end

  # POST /engine_yard_contacts
  # POST /engine_yard_contacts.xml
  def create
    @engine_yard_contact = EngineYardContact.new(params[:engine_yard_contact])

    respond_to do |format|
      if @engine_yard_contact.save
        flash[:notice] = 'EngineYardContact was successfully created.'
        format.html { redirect_to(engine_yard_contacts_path) }
        format.xml  { render :xml => @engine_yard_contact, :status => :created, :location => @engine_yard_contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @engine_yard_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /engine_yard_contacts/1
  # PUT /engine_yard_contacts/1.xml
  def update
    @engine_yard_contact = EngineYardContact.find(params[:id])

    respond_to do |format|
      if @engine_yard_contact.update_attributes(params[:engine_yard_contact])
        flash[:notice] = 'EngineYardContact was successfully updated.'
        format.html { redirect_to(engine_yard_contacts_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @engine_yard_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /engine_yard_contacts/1
  # DELETE /engine_yard_contacts/1.xml
  def destroy
    @engine_yard_contact = EngineYardContact.find(params[:id])
    @engine_yard_contact.destroy

    respond_to do |format|
      format.html { redirect_to(engine_yard_contacts_url) }
      format.xml  { head :ok }
    end
  end
end
