require 'spec_helper'

describe "students/edit.html.erb" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :organization_id => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_path(@student), :method => "post" do
      assert_select "input#student_organization_id", :name => "student[organization_id]"
      assert_select "input#student_name", :name => "student[name]"
    end
  end
end
