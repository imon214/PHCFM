require "spec_helper"

describe PhcfmsController do
  describe "routing" do

    it "routes to #index" do
      get("/phcfms").should route_to("phcfms#index")
    end

    it "routes to #new" do
      get("/phcfms/new").should route_to("phcfms#new")
    end

    it "routes to #show" do
      get("/phcfms/1").should route_to("phcfms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/phcfms/1/edit").should route_to("phcfms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/phcfms").should route_to("phcfms#create")
    end

    it "routes to #update" do
      put("/phcfms/1").should route_to("phcfms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/phcfms/1").should route_to("phcfms#destroy", :id => "1")
    end

  end
end
