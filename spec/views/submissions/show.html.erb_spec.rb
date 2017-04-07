require 'rails_helper'

RSpec.describe "submissions/show", type: :view do
  before(:each) do
    @submission = assign(:submission, Submission.create!(
      :verdict => "Verdict",
      :language => "Language",
      :execution_time => 2,
      :code => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Verdict/)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
