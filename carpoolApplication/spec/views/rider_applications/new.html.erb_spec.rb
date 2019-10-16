require 'rails_helper'

RSpec.describe "rider_applications/new", type: :view do
  before(:each) do
    assign(:rider_application, RiderApplication.new(
      :Name => "MyString",
      :Phone => "MyString"
    ))
  end

  it "renders new rider_application form" do
    render

    assert_select "form[action=?][method=?]", rider_applications_path, "post" do

      assert_select "input#rider_application_Name[name=?]", "rider_application[Name]"

      assert_select "input#rider_application_Phone[name=?]", "rider_application[Phone]"
    end
  end
end
