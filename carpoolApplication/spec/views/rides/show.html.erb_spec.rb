require 'rails_helper'

RSpec.describe "rides/show", type: :view do
  before(:each) do
    @ride = assign(:ride, Ride.create!(
      :ride_status => "Ride Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ride Status/)
  end
end
