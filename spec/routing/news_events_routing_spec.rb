require "spec_helper"

describe NewsEventsController do
  describe "routing" do

    it "routes to #index" do
      get("/news_events").should route_to("news_events#index")
    end

    it "routes to #new" do
      get("/news_events/new").should route_to("news_events#new")
    end

    it "routes to #show" do
      get("/news_events/1").should route_to("news_events#show", :id => "1")
    end

    it "routes to #edit" do
      get("/news_events/1/edit").should route_to("news_events#edit", :id => "1")
    end

    it "routes to #create" do
      post("/news_events").should route_to("news_events#create")
    end

    it "routes to #update" do
      put("/news_events/1").should route_to("news_events#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/news_events/1").should route_to("news_events#destroy", :id => "1")
    end

  end
end
