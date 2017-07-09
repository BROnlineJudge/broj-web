require 'rails_helper'

RSpec.describe "submissions/index", type: :view do
  before(:each) do
    assign(:submissions, [
      Submission.create!(
        :verdict => "Verdict",
        :language => "Language",
        :execution_time => 2,
        :code => "MyText"
      ),
      Submission.create!(
        :verdict => "Verdict",
        :language => "Language",
        :execution_time => 2,
        :code => "MyText"
      )
    ])
  end

  it "renders a list of submissions" do
    render
    assert_select "tr>td", :text => "Verdict".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
