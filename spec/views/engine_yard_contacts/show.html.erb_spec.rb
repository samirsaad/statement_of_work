require 'spec_helper'

describe "/engine_yard_contacts/show.html.erb" do
  include EngineYardContactsHelper
  before(:each) do
    assigns[:engine_yard_contacts] = @engine_yard_contacts = stub_model(EngineYardContacts)
  end

  it "renders attributes in <p>" do
    render
  end
end
