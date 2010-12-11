require 'spec_helper'

describe "students/show.html.erb" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :organization_id => "Organization",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Organization/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
