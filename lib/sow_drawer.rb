class SowDrawer < ApplicationController
	helper :all

	def self.draw (sow)
	pdf = PDF::Writer.new
	pdf.select_font "Times-Roman"
	pdf.font_families["Times-Roman"] = {
	"b"	=> "Times-Bold", "i"	=> "Times-Italic", "bi" => "Times-BoldItalic", "ib" => "Times-BoldItalic"}
	pdf.text "<strong>ENGINE YARD</strong>", :font_size => 14, :justification => :center
	pdf.text "<strong>STATEMENT OF WORK</strong>", :font_size => 14, :justification => :center
	pdf.text " ", :font_size => 14, :justification => :center
	pdf.text "This Statement of Work ('SOW') is entered into between " + sow.company.name  + " (''Customer'') and Engine Yard, Inc. (''Engine Yard''). This SOW, and all future Service Order Forms (including SOWs) between Customer and Engine Yard are subject to the Engine Yard Terms of Service (''the Terms of Service''), as may be updated from time to time, which is incorporated herein by reference.  The Terms of Service is available for review by Customer at http://www.engineyard.com/.  Capitalized terms used herein have the same meaning as used in the Terms of Service, if not defined herein. If Customer and Engine Yard have executed a separate written document defining the terms of service, this SOW shall be subject to the terms of that executed document. Any Sections and/or Tables in the Terms of Service related to customer termination, service levels, support ticketing, and service credits do not apply to this SOW.  The Additional Terms section of this SOW applies only if Customer and Engine Yard have executed a separate written document defining the terms of service and such document does not include terms specific to the provision of professional services. In consideration of the covenants and representations made herein, the parties hereby agree to the following:", :font_size => 12, :justification => :full
	pdf.text " ", :font_size => 14, :justification => :center
	pdf.text "<strong>SOW Scope</strong>", :font_size => 14, :justification => :left
	pdf.text  sow.scope, :font_size => 12, :justification => :full
	pdf.text " ", :font_size => 14, :justification => :center
	pdf.text "<strong>Project Management</strong>", :font_size => 14, :justification => :left
	pdf.text "Customer and Engine Yard shall each appoint a project manager (''Project Manager'') to act as a designated contact for the parties in connection with this SOW. The parties shall seek to preserve a consistent Project Manager for each SOW, but either party may change their Project Manager upon written notice to the other party. Any desired change in the scope of this SOW will require a new SOW to be executed between Customer and Engine Yard documenting that revised scope. The Project Managers for this SOW are:", :font_size => 12, :justification => :full
	pdf.text " ", :font_size => 14, :justification => :center
	pdf.text " ", :font_size => 14, :justification => :center
	pdf.text "Customer Project Manager:  " + sow.company_contact.name, :font_size => 12, :justification => :left
	pdf.text " ", :font_size => 14, :justification => :center
	pdf.text "Engine Yard Project Manager:  " + sow.engine_yard_contact.name, :font_size => 12, :justification => :left
	pdf.text " ", :font_size => 14, :justification => :center
	pdf.text "<strong>Fees</strong> ", :font_size => 14, :justification => :left
	pdf.text "This SOW will be provided to Customer on a time and materials basis with Engine Yard time charged at $250 per hour. Based upon Engine Yard's current understanding of the project requirements, it is estimated that this project will take " + ((sow.no_hours).to_i).to_s + " hours of Engine Yard time. The estimated fee for this project is " + ( ActionController::Base.helpers.number_to_currency(sow.est_fee)), :font_size => 12, :justification => :full
	pdf.text " ", :font_size => 14, :justification => :center
	pdf.text "<strong>Additional terms:</strong> ", :font_size => 14, :justification => :left
	pdf.text sow.add_terms, :font_size => 12, :justification => :full
	pdf.text " ", :font_size => 14, :justification => :center
	pdf.text "Engine Yard will use commercially reasonable efforts to perform the services associated with this SOW.  Customer shall make available in a timely manner at no charge to Engine Yard all data, programs, documentation, or other information and resources required by Engine Yard for the performance of this SOW.  Customer shall be responsible for, and assumes the risk of any issues or problems resulting from, the content, accuracy, completeness or consistency of all such data, programs, documentation, or other information and resources supplied by Customer. Upon notification by Engine Yard of the completion of this SOW, Customer shall review such completed services solely to determine if such services have been performed in accordance with the applicable specifications set forth in this SOW. Customer shall either accept or reject such services in writing within three days after notification by Engine Yard of the completion of such services.  Customer may reject such services only if such services do not conform to the specifications set forth in this SOW.  If Customer rejects any services, Customer shall provide, at the time of rejection, a written statement to Engine Yard that identifies in reasonable detail, any nonconformity with the applicable specifications. With respect to any services for which Engine Yard has not received a written notice of nonconformity prior to the expiration of the three day period, Customer shall be deemed to have accepted such services.  If Customer properly rejects any services, Engine Yard shall use commercially reasonable efforts to correct confirmed nonconformities for such services that are specified in such written statement and to redeliver such services to Customer.  Upon any such redelivery of any services, the foregoing provisions shall be reapplied until such services are accepted by Customer, provided, however, that upon the third or any subsequent proper rejection of the same services for the same nonconformity, Customer's sole and exclusive remedy shall be to elect one of the following options in writing within three days after such rejection: (1) request that Engine Yard continue to attempt to correct and redeliver such services, in which case the above process shall be repeated; (2) notify Engine Yard that it accepts the services despite any nonconformities; or (3) terminate the applicable purchase of such nonconforming services, in which case (A) Customer shall not be obligated to make any payment associated with the nonconforming services, or in case payment has already been made for such non-conforming services, Customer shall be entitled to a refund of such payment, (B) all payments made or required to be made for any conforming services or any other Services shall remain non-refundable and non-creditable. Engine Yard may decide, in its sole discretion, to subcontract with third parties for the performance of all or some of the services. Customer hereby agrees that Engine Yard may cooperate with, and share Customer information with, any such third parties as reasonably necessary in relation to the performance of the services. ", :font_size => 12, :justification => :full
	
	pdf.text " ", :font_size => 14, :justification => :center
	pdf.text "IN WITNESS WHEREOF, Customer and Engine Yard have each caused this SOW to be signed and delivered by its duly authorized officer, as of the last date set forth below. ", :font_size => 12, :justification => :full
	pdf.text " ", :font_size => 14, :justification => :center
	

	pdf.render
	end
    
    
end