require 'rails_helper'

RSpec.describe "RiderApplications", type: :request do
  describe "GET /rider_applications" do
    it "works! (now write some real specs)" do
      get rider_applications_path
      expect(response).to have_http_status(200)
    end
  end
end
