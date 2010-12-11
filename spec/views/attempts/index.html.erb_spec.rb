require 'spec_helper'

describe "attempts/index.html.erb" do
  before(:each) do
    assign(:attempts, [
      stub_model(Attempt,
        :quiz_id => 1,
        :student_id => 1,
        :percent_correct => 1.5,
        :wrong_answers => "MyText"
      ),
      stub_model(Attempt,
        :quiz_id => 1,
        :student_id => 1,
        :percent_correct => 1.5,
        :wrong_answers => "MyText"
      )
    ])
  end

  it "renders a list of attempts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
