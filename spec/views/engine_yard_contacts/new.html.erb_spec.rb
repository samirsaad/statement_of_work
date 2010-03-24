require 'spec_helper'

describe "/engine_yard_contacts/new.html.erb" do
  include EngineYardContactsHelper

  before(:each) do
    assigns[:engine_yard_contacts] = stub_model(EngineYardContacts,
      :new_record? => true
    )
  end

  it "renders new engine_yard_contacts form" do
    render

    response.should have_tag("form[action=?][method=post]", engine_yard_contacts_path) do
    end
  end
end
