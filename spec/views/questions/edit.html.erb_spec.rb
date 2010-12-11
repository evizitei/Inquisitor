require 'spec_helper'

describe "questions/edit.html.erb" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :prompt => "MyString",
      :correct_answer => "MyString",
      :distractor_1 => "MyString",
      :distractor_2 => "MyString",
      :distractor_3 => "MyString",
      :quiz_id => 1
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => question_path(@question), :method => "post" do
      assert_select "input#question_prompt", :name => "question[prompt]"
      assert_select "input#question_correct_answer", :name => "question[correct_answer]"
      assert_select "input#question_distractor_1", :name => "question[distractor_1]"
      assert_select "input#question_distractor_2", :name => "question[distractor_2]"
      assert_select "input#question_distractor_3", :name => "question[distractor_3]"
      assert_select "input#question_quiz_id", :name => "question[quiz_id]"
    end
  end
end
