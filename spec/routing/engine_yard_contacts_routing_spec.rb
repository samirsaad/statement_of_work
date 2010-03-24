require 'spec_helper'

describe EngineYardContactsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/engine_yard_contacts" }.should route_to(:controller => "engine_yard_contacts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/engine_yard_contacts/new" }.should route_to(:controller => "engine_yard_contacts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/engine_yard_contacts/1" }.should route_to(:controller => "engine_yard_contacts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/engine_yard_contacts/1/edit" }.should route_to(:controller => "engine_yard_contacts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/engine_yard_contacts" }.should route_to(:controller => "engine_yard_contacts", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/engine_yard_contacts/1" }.should route_to(:controller => "engine_yard_contacts", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/engine_yard_contacts/1" }.should route_to(:controller => "engine_yard_contacts", :action => "destroy", :id => "1") 
    end
  end
end
