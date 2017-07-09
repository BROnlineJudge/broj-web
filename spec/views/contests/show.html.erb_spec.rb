require 'rails_helper'

RSpec.describe "contests/show", type: :view do
  before(:each) do
    @contest = assign(:contest, Contest.create!(
      :name => "Name",
      :duration => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
