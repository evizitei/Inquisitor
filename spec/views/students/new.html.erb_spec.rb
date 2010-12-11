require 'spec_helper'

describe "students/new.html.erb" do
  before(:each) do
    assign(:student, stub_model(Student,
      :organization_id => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path, :method => "post" do
      assert_select "input#student_organization_id", :name => "student[organization_id]"
      assert_select "input#student_name", :name => "student[name]"
    end
  end
end
