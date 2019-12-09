require 'rails_helper'

RSpec.describe "rides/edit", type: :view do
  before(:each) do
    @ride = assign(:ride, Ride.create!(
      :ride_status => "MyString"
    ))
  end

  it "renders the edit ride form" do
    render

    assert_select "form[action=?][method=?]", ride_path(@ride), "post" do

      assert_select "input#ride_ride_status[name=?]", "ride[ride_status]"
    end
  end
end
