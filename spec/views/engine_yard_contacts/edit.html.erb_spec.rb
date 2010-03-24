require 'spec_helper'

describe "/engine_yard_contacts/edit.html.erb" do
  include EngineYardContactsHelper

  before(:each) do
    assigns[:engine_yard_contacts] = @engine_yard_contacts = stub_model(EngineYardContacts,
      :new_record? => false
    )
  end

  it "renders the edit engine_yard_contacts form" do
    render

    response.should have_tag("form[action=#{engine_yard_contacts_path(@engine_yard_contacts)}][method=post]") do
    end
  end
end
