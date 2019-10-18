require "rails_helper"

RSpec.describe RiderApplicationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/rider_applications").to route_to("rider_applications#index")
    end

    it "routes to #new" do
      expect(:get => "/rider_applications/new").to route_to("rider_applications#new")
    end

    it "routes to #show" do
      expect(:get => "/rider_applications/1").to route_to("rider_applications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rider_applications/1/edit").to route_to("rider_applications#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/rider_applications").to route_to("rider_applications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/rider_applications/1").to route_to("rider_applications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/rider_applications/1").to route_to("rider_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rider_applications/1").to route_to("rider_applications#destroy", :id => "1")
    end
  end
end
