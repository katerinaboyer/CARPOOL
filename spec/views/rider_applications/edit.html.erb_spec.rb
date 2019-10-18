require 'rails_helper'

RSpec.describe "rider_applications/edit", type: :view do
  before(:each) do
    @rider_application = assign(:rider_application, RiderApplication.create!(
      :Name => "MyString",
      :Phone => "MyString"
    ))
  end

  it "renders the edit rider_application form" do
    render

    assert_select "form[action=?][method=?]", rider_application_path(@rider_application), "post" do

      assert_select "input#rider_application_Name[name=?]", "rider_application[Name]"

      assert_select "input#rider_application_Phone[name=?]", "rider_application[Phone]"
    end
  end
end
