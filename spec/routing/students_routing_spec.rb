require "spec_helper"

describe StudentsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/students" }.should route_to(:controller => "students", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/students/new" }.should route_to(:controller => "students", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/students/1" }.should route_to(:controller => "students", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/students/1/edit" }.should route_to(:controller => "students", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/students" }.should route_to(:controller => "students", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/students/1" }.should route_to(:controller => "students", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/students/1" }.should route_to(:controller => "students", :action => "destroy", :id => "1")
    end

  end
end
