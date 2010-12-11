require 'spec_helper'

describe "attempts/edit.html.erb" do
  before(:each) do
    @attempt = assign(:attempt, stub_model(Attempt,
      :quiz_id => 1,
      :student_id => 1,
      :percent_correct => 1.5,
      :wrong_answers => "MyText"
    ))
  end

  it "renders the edit attempt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attempt_path(@attempt), :method => "post" do
      assert_select "input#attempt_quiz_id", :name => "attempt[quiz_id]"
      assert_select "input#attempt_student_id", :name => "attempt[student_id]"
      assert_select "input#attempt_percent_correct", :name => "attempt[percent_correct]"
      assert_select "textarea#attempt_wrong_answers", :name => "attempt[wrong_answers]"
    end
  end
end
