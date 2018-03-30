require 'rails_helper'

RSpec.describe "plans/index", type: :view do
  before(:each) do
    assign(:plans, [
      Plan.create!(
        :name => "Name",
        :duration => 2,
        :price => 3.5
      ),
      Plan.create!(
        :name => "Name",
        :duration => 2,
        :price => 3.5
      )
    ])
  end

  it "renders a list of plans" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
  end
end
