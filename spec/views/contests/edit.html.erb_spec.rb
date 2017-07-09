require 'rails_helper'

RSpec.describe "contests/edit", type: :view do
  before(:each) do
    @contest = assign(:contest, Contest.create!(
      :name => "MyString",
      :duration => 1
    ))
  end

  it "renders the edit contest form" do
    render

    assert_select "form[action=?][method=?]", contest_path(@contest), "post" do

      assert_select "input#contest_name[name=?]", "contest[name]"

      assert_select "input#contest_duration[name=?]", "contest[duration]"
    end
  end
end
