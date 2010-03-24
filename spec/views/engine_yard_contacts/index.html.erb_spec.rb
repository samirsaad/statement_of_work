require 'spec_helper'

describe "/engine_yard_contacts/index.html.erb" do
  include EngineYardContactsHelper

  before(:each) do
    assigns[:engine_yard_contacts] = [
      stub_model(EngineYardContacts),
      stub_model(EngineYardContacts)
    ]
  end

  it "renders a list of engine_yard_contacts" do
    render
  end
end
