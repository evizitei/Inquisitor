require 'spec_helper'

describe "attempts/show.html.erb" do
  before(:each) do
    @attempt = assign(:attempt, stub_model(Attempt,
      :quiz_id => 1,
      :student_id => 1,
      :percent_correct => 1.5,
      :wrong_answers => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
