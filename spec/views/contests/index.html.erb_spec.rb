require 'rails_helper'

RSpec.describe "contests/index", type: :view do
  before(:each) do
    assign(:contests, [
      Contest.create!(
        :name => "Name",
        :duration => 2
      ),
      Contest.create!(
        :name => "Name",
        :duration => 2
      )
    ])
  end

  it "renders a list of contests" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
