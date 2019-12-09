require 'rails_helper'

RSpec.describe "rides/index", type: :view do
  before(:each) do
    assign(:rides, [
      Ride.create!(
        :ride_status => "Ride Status"
      ),
      Ride.create!(
        :ride_status => "Ride Status"
      )
    ])
  end

  it "renders a list of rides" do
    render
    assert_select "tr>td", :text => "Ride Status".to_s, :count => 2
  end
end
