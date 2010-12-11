require 'spec_helper'

describe "questions/show.html.erb" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :prompt => "Prompt",
      :correct_answer => "Correct Answer",
      :distractor_1 => "Distractor 1",
      :distractor_2 => "Distractor 2",
      :distractor_3 => "Distractor 3",
      :quiz_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Prompt/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Correct Answer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Distractor 1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Distractor 2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Distractor 3/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
