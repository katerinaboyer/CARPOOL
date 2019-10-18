require 'rails_helper'

RSpec.describe "rider_applications/index", type: :view do
  before(:each) do
    assign(:rider_applications, [
      RiderApplication.create!(
        :Name => "Name",
        :Phone => "Phone"
      ),
      RiderApplication.create!(
        :Name => "Name",
        :Phone => "Phone"
      )
    ])
  end

  it "renders a list of rider_applications" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
