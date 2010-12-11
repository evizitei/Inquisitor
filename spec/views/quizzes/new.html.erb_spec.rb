require 'spec_helper'

describe "quizzes/new.html.erb" do
  before(:each) do
    assign(:quiz, stub_model(Quiz,
      :name => "MyString",
      :pass_percentage => 1
    ).as_new_record)
  end

  it "renders new quiz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quizzes_path, :method => "post" do
      assert_select "input#quiz_name", :name => "quiz[name]"
      assert_select "input#quiz_pass_percentage", :name => "quiz[pass_percentage]"
    end
  end
end
