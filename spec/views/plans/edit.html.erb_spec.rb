require 'rails_helper'

RSpec.describe "plans/edit", type: :view do
  before(:each) do
    @plan = assign(:plan, Plan.create!(
      :name => "MyString",
      :duration => 1,
      :price => 1.5
    ))
  end

  it "renders the edit plan form" do
    render

    assert_select "form[action=?][method=?]", plan_path(@plan), "post" do

      assert_select "input[name=?]", "plan[name]"

      assert_select "input[name=?]", "plan[duration]"

      assert_select "input[name=?]", "plan[price]"
    end
  end
end
