require "spec_helper"

describe AttemptsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/attempts" }.should route_to(:controller => "attempts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/attempts/new" }.should route_to(:controller => "attempts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/attempts/1" }.should route_to(:controller => "attempts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/attempts/1/edit" }.should route_to(:controller => "attempts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/attempts" }.should route_to(:controller => "attempts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/attempts/1" }.should route_to(:controller => "attempts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/attempts/1" }.should route_to(:controller => "attempts", :action => "destroy", :id => "1")
    end

  end
end
