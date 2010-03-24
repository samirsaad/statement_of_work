class StatementOfWorksController < ApplicationController
  
 # auto_complete_for :company, :name
#  auto_complete_for :company_contact, :name
 # auto_complete_for :engine_yard_contact, :name
  
  # GET /statement_of_works
  # GET /statement_of_works.xml
  def index
    @statement_of_works = StatementOfWork.find(:all, :order => 'created_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @statement_of_works }
    end
  end

  # GET /statement_of_works/1
  # GET /statement_of_works/1.xml
  def show
    @statement_of_work = StatementOfWork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @statement_of_work }
      format.pdf do
            	send_data SowDrawer.draw(@statement_of_work), :filename => 'sow.pdf', :type => 'application/pdf', :disposition => 'inline'
      end
    end
  end

  # GET /statement_of_works/new
  # GET /statement_of_works/new.xml
  def new
    @statement_of_work = StatementOfWork.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @statement_of_work }
    end
  end

  # GET /statement_of_works/1/edit
  def edit
    @statement_of_work = StatementOfWork.find(params[:id])
    @company = Company.all
    @comp = Company.new
    @cont= 1
    @company_contacts = CompanyContact.all
    @engine_yard_contacts = EngineYardContact.all
  end

  # POST /statement_of_works
  # POST /statement_of_works.xml
  def create
    @statement_of_work = StatementOfWork.new(params[:statement_of_work])
    
    company = Company.find_or_create_by_name(params[:company][:name])
  	@statement_of_work.company = company
  	
  	contact = CompanyContact.find_by_id(params[:statement_of_work][:company_contact_id])
  	@statement_of_work.company_contact = contact

  	ey = EngineYardContact.find_or_create_by_id(params[:statement_of_work][:engine_yard_contact_id])
  	@statement_of_work.engine_yard_contact = ey
  	
  	k = rand(10 ** 13)
  	t=0
  	while (t == 0)
  	  t= rand (9)
  	end
  	t =t* (10 ** 13)
  	k = k+t
  	@statement_of_work.id = k

    respond_to do |format|
      if @statement_of_work.save
        flash[:notice] = 'StatementOfWork was successfully created.'
        format.html { redirect_to(@statement_of_work) }
        format.xml  { render :xml => @statement_of_work, :status => :created, :location => @statement_of_work }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @statement_of_work.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /statement_of_works/1
  # PUT /statement_of_works/1.xml
  def update
    @statement_of_work = StatementOfWork.find(params[:id])
    
    company = Company.find(params[:statement_of_work][:company_id])
  	@statement_of_work.company = company

  	contact = CompanyContact.find(params[:statement_of_work][:company_contact_id])
  	@statement_of_work.company_contact = contact

  	ey = EngineYardContact.find(params[:statement_of_work][:engine_yard_contact_id])
  	@statement_of_work.engine_yard_contact = ey

    respond_to do |format|
      if @statement_of_work.update_attributes(params[:statement_of_work])
        flash[:notice] = 'StatementOfWork was successfully updated.'
        format.html { redirect_to(@statement_of_work) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @statement_of_work.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /statement_of_works/1
  # DELETE /statement_of_works/1.xml
  def destroy
    @statement_of_work = StatementOfWork.find(params[:id])
    @statement_of_work.destroy

    respond_to do |format|
      format.html { redirect_to(statement_of_works_url) }
      format.xml  { head :ok }
    end
  end
end
