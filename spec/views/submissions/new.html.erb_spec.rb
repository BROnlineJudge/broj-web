require 'rails_helper'

RSpec.describe "submissions/new", type: :view do
  before(:each) do
    assign(:submission, Submission.new(
      :verdict => "MyString",
      :language => "MyString",
      :execution_time => 1,
      :code => "MyText"
    ))
  end

  it "renders new submission form" do
    render

    assert_select "form[action=?][method=?]", submissions_path, "post" do

      assert_select "input#submission_verdict[name=?]", "submission[verdict]"

      assert_select "input#submission_language[name=?]", "submission[language]"

      assert_select "input#submission_execution_time[name=?]", "submission[execution_time]"

      assert_select "textarea#submission_code[name=?]", "submission[code]"
    end
  end
end
