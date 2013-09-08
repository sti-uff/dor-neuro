require "spec_helper"

describe VoluntariosController do
  describe "routing" do

    it "routes to #index" do
      get("/voluntarios").should route_to("voluntarios#index")
    end

    it "routes to #new" do
      get("/voluntarios/new").should route_to("voluntarios#new")
    end

    it "routes to #show" do
      get("/voluntarios/1").should route_to("voluntarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/voluntarios/1/edit").should route_to("voluntarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/voluntarios").should route_to("voluntarios#create")
    end

    it "routes to #update" do
      put("/voluntarios/1").should route_to("voluntarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/voluntarios/1").should route_to("voluntarios#destroy", :id => "1")
    end

  end
end
