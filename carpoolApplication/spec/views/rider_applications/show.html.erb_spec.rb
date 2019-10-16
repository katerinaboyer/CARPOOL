require 'rails_helper'

RSpec.describe "rider_applications/show", type: :view do
  before(:each) do
    @rider_application = assign(:rider_application, RiderApplication.create!(
      :Name => "Name",
      :Phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
  end
end
