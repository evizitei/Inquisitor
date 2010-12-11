require 'spec_helper'

describe "questions/index.html.erb" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :prompt => "Prompt",
        :correct_answer => "Correct Answer",
        :distractor_1 => "Distractor 1",
        :distractor_2 => "Distractor 2",
        :distractor_3 => "Distractor 3",
        :quiz_id => 1
      ),
      stub_model(Question,
        :prompt => "Prompt",
        :correct_answer => "Correct Answer",
        :distractor_1 => "Distractor 1",
        :distractor_2 => "Distractor 2",
        :distractor_3 => "Distractor 3",
        :quiz_id => 1
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Prompt".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Correct Answer".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Distractor 1".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Distractor 2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Distractor 3".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
