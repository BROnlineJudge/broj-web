require 'rails_helper'

RSpec.describe "submissions/edit", type: :view do
  before(:each) do
    @submission = assign(:submission, Submission.create!(
      :verdict => "MyString",
      :language => "MyString",
      :execution_time => 1,
      :code => "MyText"
    ))
  end

  it "renders the edit submission form" do
    render

    assert_select "form[action=?][method=?]", submission_path(@submission), "post" do

      assert_select "input#submission_verdict[name=?]", "submission[verdict]"

      assert_select "input#submission_language[name=?]", "submission[language]"

      assert_select "input#submission_execution_time[name=?]", "submission[execution_time]"

      assert_select "textarea#submission_code[name=?]", "submission[code]"
    end
  end
end
