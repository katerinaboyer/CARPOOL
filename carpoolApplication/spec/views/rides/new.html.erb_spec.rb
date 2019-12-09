require 'rails_helper'

RSpec.describe "rides/new", type: :view do
  before(:each) do
    assign(:ride, Ride.new(
      :ride_status => "MyString"
    ))
  end

  it "renders new ride form" do
    render

    assert_select "form[action=?][method=?]", rides_path, "post" do

      assert_select "input#ride_ride_status[name=?]", "ride[ride_status]"
    end
  end
end
