require 'rails_helper'

RSpec.describe "contests/new", type: :view do
  before(:each) do
    assign(:contest, Contest.new(
      :name => "MyString",
      :duration => 1
    ))
  end

  it "renders new contest form" do
    render

    assert_select "form[action=?][method=?]", contests_path, "post" do

      assert_select "input#contest_name[name=?]", "contest[name]"

      assert_select "input#contest_duration[name=?]", "contest[duration]"
    end
  end
end
