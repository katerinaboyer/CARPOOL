require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email => "Email",
        :password => "",
        :role => "Role",
        :first_name => "First Name",
        :last_name => "Last Name",
        :uin => 2
      ),
      User.create!(
        :email => "Email",
        :password => "",
        :role => "Role",
        :first_name => "First Name",
        :last_name => "Last Name",
        :uin => 2
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
